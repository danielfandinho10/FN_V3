using UnityEngine;

public class Bullet : MonoBehaviour
{
    public float speed = 120f;
    public float lifeTime = 3f;

   public Rigidbody rb;

    void Start()
    {
        rb = GetComponent<Rigidbody>();
        rb.linearVelocity = transform.forward * speed;

        Destroy(gameObject, lifeTime);
    }

    void OnTriggerEnter(Collider other)
    {
        Destroy(gameObject);
    }
}