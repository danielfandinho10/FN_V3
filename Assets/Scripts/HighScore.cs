using UnityEngine;
using TMPro;

public class HighScore : MonoBehaviour
{
    public TextMeshProUGUI highScoreText;

    void Start()
    {
        string text = "TOP SCORES\n";

        for (int i = 0; i < 5; i++)
        {
            string name = PlayerPrefs.GetString("Name" + i, "---");
            int score = PlayerPrefs.GetInt("Score" + i, 0);

            text += (i + 1) + ". " + name + " - " + score + "\n";
        }

        highScoreText.text = text;
    }
}