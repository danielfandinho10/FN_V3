using UnityEngine;
using System.Collections;

public class WeaponController : MonoBehaviour
{
    public Camera playerCamera;
    public float maxDistance = 1000f;
    public ParticleSystem muzzleFlash;
    public Light muzzleLight;
    

    public float perfectLimit = 1f;

    void Start()
    {
        if (playerCamera == null) playerCamera = Camera.main;
        if (muzzleLight != null) muzzleLight.enabled = false;

        
        Cursor.lockState = CursorLockMode.Locked;
        Cursor.visible = false;
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
                    float timeSinceSpawn = Time.time - enemy.spawnTime;

                    if (timeSinceSpawn <= perfectLimit)
                    {
                        GameEvents.OnPerfect?.Invoke();
                    }
                    else
                    {
                        GameEvents.OnGood?.Invoke();
                    }

                    GameEvents.OnHit?.Invoke();
                    Destroy(root.gameObject);
                }
            }
            else
            {
                
                GameEvents.OnMiss?.Invoke();
            }
        }
        else
        {
            
            GameEvents.OnMiss?.Invoke();
        }
    }

    IEnumerator FlashLight()
    {
        muzzleLight.enabled = true;
        yield return new WaitForSeconds(0.05f);
        muzzleLight.enabled = false;
    }
}