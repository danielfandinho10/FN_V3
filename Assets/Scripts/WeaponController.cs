using UnityEngine;
using System.Collections;

public class WeaponController : MonoBehaviour
{
    public Camera playerCamera;
    public float maxDistance = 1000f;
    public int vidas = 3;

    public ParticleSystem muzzleFlash;
    public Light muzzleLight;

    public float perfectWindow = 1f;
    public float goodWindow = 3f;

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
            Transform root = hit.collider.transform.root;

            if (root.CompareTag("Target"))
            {
                Enemy enemy = root.GetComponent<Enemy>();

                if (enemy != null && enemy.audioSource != null)
                {
                    float currentTime = enemy.audioSource.time;
                    float expectedHitTime = enemy.targetTime + 0.8f; // travelTime
                    float diff = Mathf.Abs(currentTime - expectedHitTime);

                    if (diff <= perfectWindow)
                    {
                        Debug.Log("PERFECT");
                        GameEvents.OnPerfect?.Invoke();
                        GameEvents.OnHit?.Invoke();
                    }
                    else if (diff <= goodWindow)
                    {
                        Debug.Log("GOOD");
                        GameEvents.OnGood?.Invoke();
                        GameEvents.OnHit?.Invoke();
                    }
                    else
                    {
                        Debug.Log("BAD");
                    }
                }
                else
                {
                    GameEvents.OnHit?.Invoke();
                }

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