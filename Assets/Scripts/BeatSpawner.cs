using UnityEngine;
using System.Collections.Generic;

public class BeatSpawner : MonoBehaviour
{
    [Header("Configuración")]
    public BeatJsonReader config;
    public GameObject targetPrefab;
    public Transform spawnArea;
    public AudioSource audioSource;
    public float travelTime = 0.6f;
    public float minDistance = 2f;

    List<float> beats = new List<float>();
    int index = 0;
    List<Vector3> usedPositions = new List<Vector3>();

    void Start()
    {
        if (config == null || audioSource == null || targetPrefab == null || spawnArea == null)
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
            GameObject enemy = Instantiate(targetPrefab, spawnPos, Quaternion.identity);

            //Destroy(enemy, 1f);

            index++;
        }
    }

    void GenerateBeats()
    {
        float beat = 60f / config.bpm;
        float[] steps = { 0f, 0.5f, 1f, 1.5f, 2f, 2.5f, 3f, 3.5f };

        for (int bar = 0; bar < config.bars; bar++)
        {
            foreach (float step in steps)
            {
                //Corchea
                if (step % 1f != 0 && Random.value > 0.1f)
                    continue;

                float t = bar * 4 * beat + step * beat;
                beats.Add(t);
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
                return pos;
            }
        }

        return center;
    }
}