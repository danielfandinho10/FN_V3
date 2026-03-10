using UnityEngine;
using System;

public class Shoot_Behavior : MonoBehaviour
{
    public static Action OnShoot;

    public GameObject bulletPrefab;
    public Transform firePoint;

    void Update()
    {
        if (Input.GetMouseButtonDown(0))
        {
            Shoot();
            OnShoot?.Invoke();
        }
    }

    void Shoot()
    {
        firePoint.rotation = Camera.main.transform.rotation;
        Instantiate(bulletPrefab, firePoint.position, firePoint.rotation);
    }
}