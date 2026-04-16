using UnityEngine;

public class Enemy : MonoBehaviour
{
    public float targetTime; // Se mantiene por estructura, aunque ahora usaremos spawnTime
    public float spawnTime;  // Momento en que el enemigo aparece
    public AudioSource audioSource;
    public bool wasShot = false;
}
