using UnityEngine;
using TMPro;

public class ScoreManager : MonoBehaviour
{
    public int score = 0;

    public int perfectPoints = 100;
    public int goodPoints = 50;
    public int missPenalty = -25;

    public TextMeshProUGUI scoreText;

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

    void Start()
    {
        UpdateUI();
    }

    void OnPerfect()
    {
        score += perfectPoints;
        UpdateUI();
    }

    void OnGood()
    {
        score += goodPoints;
        UpdateUI();
    }

    void OnMiss()
    {
        score += missPenalty;
        if (score < 0) score = 0;
        UpdateUI();
    }

    void UpdateUI()
    {
        if (scoreText != null)
            scoreText.text = "Score: " + score;
    }
}