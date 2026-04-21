using UnityEngine;
using TMPro;

public class HighScore : MonoBehaviour
{
    public TextMeshProUGUI highScoreText;

    void OnEnable() 
    {
        MostrarPuntuaciones();
    }

    public void MostrarPuntuaciones()
    {
        string text = "<color=#FFD700>TOP SCORES</color>\n\n";

        for (int i = 0; i < 5; i++)
        {
            
            string name = PlayerPrefs.GetString("Name" + i, "---");
            int score = PlayerPrefs.GetInt("Score" + i, 0);

            text += (i + 1) + ". " + name + " - " + score + " PTS\n";
        }

        highScoreText.text = text;
    }
    public void ResetearPuntuaciones()
    {
        PlayerPrefs.DeleteAll();
        PlayerPrefs.Save();

       
        UnityEngine.SceneManagement.SceneManager.LoadScene(
            UnityEngine.SceneManagement.SceneManager.GetActiveScene().buildIndex
        );
    }
}