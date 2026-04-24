using UnityEngine;
using TMPro;
using System.Collections;

public class TimingText : MonoBehaviour
{
    public TextMeshProUGUI text;
    public float duration = 0.5f;

    void OnEnable()
    {
        GameEvents.OnPerfect += OnPerfect;
        GameEvents.OnGood += OnGood;
        GameEvents.OnMiss += OnMiss;
        GameEvents.OnEasterEgg += OnEasterEgg; 
    }

    void OnDisable()
    {
        GameEvents.OnPerfect -= OnPerfect;
        GameEvents.OnGood -= OnGood;
        GameEvents.OnMiss -= OnMiss;
        GameEvents.OnEasterEgg -= OnEasterEgg; 
    }

    void OnPerfect() => Show("PERFECT", Color.green);
    void OnGood() => Show("GOOD", Color.yellow);
    void OnMiss() => Show("MISS", Color.red);

    
    void OnEasterEgg() => Show("Did You Shoot Tiffany?", new Color(1f, 0.4f, 0.7f)); 

    void Show(string msg, Color color)
    {
        StopAllCoroutines();
        StartCoroutine(ShowRoutine(msg, color));
    }

    IEnumerator ShowRoutine(string msg, Color color)
    {
        text.text = msg;
        text.color = color;
        text.enabled = true;

        yield return new WaitForSeconds(duration);

        text.enabled = false;
    }
}