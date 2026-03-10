using UnityEditor.UIElements;
using UnityEngine;

public class WeaponController : MonoBehaviour
{
    public Camera playerCamera;       
    public float maxDistance = 100f;
    public int vidas = 3;

    void Start()
    {
        
        if (playerCamera == null)
        {
            playerCamera = Camera.main;
        }
    }

    void Update()
    {
        if (Input.GetMouseButtonDown(0))
        {
            DetectarImpacto();
        }
    }

    void DetectarImpacto()
    {

        Ray ray = playerCamera.ViewportPointToRay(new Vector3(0.5f, 0.5f, 0));
        RaycastHit hit;


        Debug.DrawRay(ray.origin, ray.direction * maxDistance, Color.red, 1f);

        if (Physics.Raycast(ray, out hit, maxDistance))
        {
            Debug.Log("Golpeó: " + hit.collider.name);

            if (hit.collider.CompareTag("Target"))
            {
           
                Destroy(hit.collider.gameObject, 0.3f); 
                Debug.Log("Objetivo destruido con retraso");
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
        Debug.Log("Fallaste. Vidas restantes: " + vidas);

        if (vidas <= 0)
        {
            Debug.Log("GAME OVER");
            // Time.timeScale = 0f; // opcional para detener el juego
        }
    }
}