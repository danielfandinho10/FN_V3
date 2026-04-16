using UnityEngine;
using System.Collections;

public class WeaponController : MonoBehaviour
{
    public Camera playerCamera;
    public float maxDistance = 1000f;
    public int vidas = 3;
    public ParticleSystem muzzleFlash;
    public Light muzzleLight;

    // Ajustado según tu requerimiento:
    // Perfect: 0 a 1s
    // Good: 1s a final (3s)
    public float perfectLimit = 1f;

    void Start()
    {
        if (playerCamera == null) playerCamera = Camera.main;
        if (muzzleLight != null) muzzleLight.enabled = false;
    }

    void Update()
    {
        if (Input.GetMouseButtonDown(0)) DetectarImpacto();
    }

    void DetectarImpacto()
    {
        if (muzzleFlash != null) muzzleFlash.Play();
        if (muzzleLight != null) StartCoroutine(FlashLight());

        Ray ray = playerCamera.ViewportPointToRay(new Vector3(0.5f, 0.5f, 0));
        RaycastHit hit;

        if (Physics.Raycast(ray, out hit, maxDistance))
        {
            Transform root = hit.collider.transform.root;
            if (root.CompareTag("Target"))
            {
                Enemy enemy = root.GetComponent<Enemy>();
                if (enemy != null)
                {
                    // Calculamos cuánto tiempo ha pasado desde el spawn
                    float timeSinceSpawn = Time.time - enemy.spawnTime;

                    if (timeSinceSpawn <= perfectLimit)
                    {
                        Debug.Log("PERFECT: " + timeSinceSpawn + "s");
                        GameEvents.OnPerfect?.Invoke();
                    }
                    else
                    {
                        // Si está vivo y disparas después de 1s, es Good
                        Debug.Log("GOOD: " + timeSinceSpawn + "s");
                        GameEvents.OnGood?.Invoke();
                    }

                    GameEvents.OnHit?.Invoke();
                    // Importante: Destruimos inmediatamente para que el Spawner no lance el Miss
                    Destroy(root.gameObject);
                }
            }
            else
            {
                PerderVida();
            }
        }
        else
        {
            PerderVida();
        }
    }

    void PerderVida()
    {
        vidas--;
        Debug.Log("Fallo al aire. vidas restantes: " + vidas);
        GameEvents.OnMiss?.Invoke();
        if (vidas <= 0) Debug.Log("GAME OVER");
    }

    IEnumerator FlashLight()
    {
        muzzleLight.enabled = true;
        yield return new WaitForSeconds(0.05f);
        muzzleLight.enabled = false;
    }
}
