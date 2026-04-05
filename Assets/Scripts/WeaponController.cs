using UnityEngine;
using System.Collections;

public class WeaponController : MonoBehaviour
{
    public Camera playerCamera;
    public float maxDistance = 1000f;
    public int vidas = 3;

    public ParticleSystem muzzleFlash;
    public Light muzzleLight;

    // --- NUEVO: timing windows
    public float perfectWindow = 0.1f;
    public float goodWindow = 0.25f;

    void Start()
    {
        if (playerCamera == null)
            playerCamera = Camera.main;

        if (muzzleLight != null)
            muzzleLight.enabled = false;
    }

    void Update()
    {
        if (Input.GetMouseButtonDown(0))
            DetectarImpacto();
    }

    void DetectarImpacto()
    {
        if (muzzleFlash != null)
            muzzleFlash.Play();

        if (muzzleLight != null)
            StartCoroutine(FlashLight());

        Ray ray = playerCamera.ViewportPointToRay(new Vector3(0.5f, 0.5f, 0));
        RaycastHit hit;

        Debug.DrawRay(ray.origin, ray.direction * maxDistance, Color.red, 1f);

        if (Physics.Raycast(ray, out hit, maxDistance))
        {
            Debug.Log("Golpeó: " + hit.collider.name);

            Transform root = hit.collider.transform.root;

            if (root.CompareTag("Target"))
            {
                // --- NUEVO: timing window
                Enemy enemy = root.GetComponent<Enemy>();
                if (enemy != null && enemy.audioSource != null)
                {
                    float currentTime = enemy.audioSource.time;
                    float diff = Mathf.Abs(currentTime - enemy.targetTime);

                    if (diff <= perfectWindow)
                    {
                        Debug.Log("PERFECT");
                        GameEvents.OnPerfect?.Invoke();
                    }
                    else if (diff <= goodWindow)
                    {
                        Debug.Log("GOOD");
                        GameEvents.OnGood?.Invoke();
                    }
                    else
                    {
                        Debug.Log("BAD");
                        GameEvents.OnMiss?.Invoke();
                    }
                }
                else
                {
                    // si no tiene Enemy, sigue funcionando como antes
                    GameEvents.OnHit?.Invoke();
                }

                // --- Mantener destroy con delay
                Destroy(root.gameObject, 0.3f);
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
        Debug.Log("Fallaste. vidas restantes: " + vidas);

        GameEvents.OnMiss?.Invoke();

        if (vidas <= 0)
        {
            Debug.Log("GAME OVER");
        }
    }

    IEnumerator FlashLight()
    {
        muzzleLight.enabled = true;
        yield return new WaitForSeconds(0.05f);
        muzzleLight.enabled = false;
    }
}