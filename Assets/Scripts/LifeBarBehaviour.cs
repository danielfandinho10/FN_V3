using UnityEngine;
using UnityEngine.UI;

public class LifeBarBehaviour : MonoBehaviour
{
    public Image fillImage;
    public float currentLife = 1f;
    public float hitAmount = 0.08f;   //sube
    public float missAmount = 0.08f;  //baja

    void OnEnable()
    {
        GameEvents.OnHit += OnHit;
        GameEvents.OnMiss += OnMiss;
    }

    void OnDisable()
    {
        GameEvents.OnHit -= OnHit;
        GameEvents.OnMiss -= OnMiss;
    }

    void OnHit()
    {
        currentLife += hitAmount;
        currentLife = Mathf.Clamp01(currentLife);
        UpdateBar();
    }

    void OnMiss()
    {
        currentLife -= missAmount;
        currentLife = Mathf.Clamp01(currentLife);
        UpdateBar();
    }

    void UpdateBar()
    {
        fillImage.fillAmount = currentLife;
    }
}