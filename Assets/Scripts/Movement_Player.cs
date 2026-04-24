using UnityEngine;

public class Movement_Player : MonoBehaviour
{
    public float speed = 5f;

    // limites del mapa
    public float minX, maxX;
    public float minZ, maxZ;

    void Update()
    {
        float x = Input.GetAxis("Horizontal");
        float z = Input.GetAxis("Vertical");

        Vector3 movement = new Vector3(x, 0f, z) * speed * Time.deltaTime;

        transform.Translate(movement, Space.World);

       
        float clampedX = Mathf.Clamp(transform.position.x, minX, maxX);
        float clampedZ = Mathf.Clamp(transform.position.z, minZ, maxZ);

        transform.position = new Vector3(clampedX, transform.position.y, clampedZ);
    }
}