    using UnityEngine;
    using System.Collections.Generic;
    using System.Collections;

    public class BeatSpawner : MonoBehaviour
    {
        [Header("Configuración")]
        public BeatJsonReader config;
        public GameObject targetPrefab;
        public Transform spawnArea;
        public AudioSource audioSource;
        public Transform player;
        public float travelTime = 0.6f;
        public float minDistance = 2f;
        public float spawnHeight = 1.5f;
        public float lifeTime = 3f; 
        private List<float> beats = new List<float>();
        private int index = 0;
        private List<Vector3> usedPositions = new List<Vector3>();

        void Start()
        {
            if (config == null || audioSource == null || targetPrefab == null || spawnArea == null || player == null)
            {
                Debug.LogError("BeatSpawner: faltan refs en el inspector");
                return;
            }
            config.LoadConfig();
            GenerateBeats();
            audioSource.Play();
        }

        void Update()
        {
            if (index >= beats.Count) return;

            float time = audioSource.time;
            

            while (index < beats.Count && time + travelTime >= beats[index])
            {
                Vector3 spawnPos = RandomPos();
                spawnPos.y = spawnHeight;
                Vector3 dir = player.position - spawnPos;
                dir.y = 0f;
                Quaternion rot = Quaternion.LookRotation(dir);

                GameObject enemyObj = Instantiate(targetPrefab, spawnPos, rot);
                Enemy e = enemyObj.GetComponent<Enemy>();

                if (e != null)
                {
                    e.targetTime = beats[index];
                    e.audioSource = audioSource;
                    e.spawnTime = Time.time; 
                }

             
                StartCoroutine(HandleMiss(enemyObj, lifeTime));

                index++;
            }
        }

        IEnumerator HandleMiss(GameObject enemy, float delay)
        {
            yield return new WaitForSeconds(delay);
           
            if (enemy != null)
            {
                Debug.Log("MISS: El enemigo expiró");
                GameEvents.OnMiss?.Invoke();
                Destroy(enemy);
            }
        }

    void GenerateBeats()
    {
        beats.Clear();

        float beatInterval = 60f / config.bpm;
        float[] steps = { 0f, 0.5f, 1f, 1.5f, 2f, 2.5f, 3f, 3.5f };

        for (int bar = 0; bar < config.bars; bar++)
        {
            int spawnedThisBar = 0;

            foreach (float step in steps)
            {
                if (spawnedThisBar >= config.maxPerBar)
                    break;

                float t = bar * 4 * beatInterval + step * beatInterval;

                
                if (step == 0f)
                {
                    beats.Add(t);
                    spawnedThisBar++;
                }
                else
                {
                    
                    if (Random.value < 0.25f)
                    {
                        beats.Add(t);
                        spawnedThisBar++;
                    }
                }
            }
        }
    }

    Vector3 RandomPos()
        {
            BoxCollider box = spawnArea.GetComponent<BoxCollider>();
            Vector3 center = box.bounds.center;
            Vector3 extents = box.bounds.extents;

            for (int i = 0; i < 20; i++)
            {
                Vector3 pos = center + new Vector3(
                    Random.Range(-extents.x, extents.x),
                    Random.Range(-extents.y, extents.y),
                    Random.Range(-extents.z, extents.z));

                bool valid = true;
                foreach (Vector3 p in usedPositions)
                {
                    if (Vector3.Distance(p, pos) < minDistance)
                    {
                        valid = false;
                        break;
                    }
                }

                if (valid)
                {
                    usedPositions.Add(pos);
                   
                    if (usedPositions.Count > 50) usedPositions.RemoveAt(0);
                    return pos;
                }
            }
            return center;
        }
    }
