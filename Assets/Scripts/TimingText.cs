using UnityEngine;
using TMPro;
using System.Collections;

public class TimingUI : MonoBehaviour
{
    public TextMeshProUGUI text;  
    public float duration = 0.5f;

    void OnEnable()
    {
        GameEvents.OnPerfect += OnPerfect;
        GameEvents.OnGood += OnGood;
        GameEvents.OnMiss += OnMiss;
    }

    void OnDisable()
    {
        GameEvents.OnPerfect -= OnPerfect;
        GameEvents.OnGood -= OnGood;
        GameEvents.OnMiss -= OnMiss;
    }

    void OnPerfect() => Show("PERFECT", Color.green);
    void OnGood() => Show("GOOD", Color.yellow);
    void OnMiss() => Show("MISS", Color.red);

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