using UnityEngine;

public class Movement_Player : MonoBehaviour
{
    public float speed = 5f;

    public BoxCollider movementArea;

    void Update()
    {
        float x = Input.GetAxis("Horizontal");
        float z = Input.GetAxis("Vertical");

        Vector3 movement = new Vector3(x, 0f, z) * speed * Time.deltaTime;

        transform.Translate(movement, Space.World);

        //limites collider
        Bounds bounds = movementArea.bounds;

        float clampedX = Mathf.Clamp(transform.position.x, bounds.min.x, bounds.max.x);
        float clampedZ = Mathf.Clamp(transform.position.z, bounds.min.z, bounds.max.z);

        transform.position = new Vector3(clampedX, transform.position.y, clampedZ);
    }
}
