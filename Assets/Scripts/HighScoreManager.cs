using UnityEngine;
using UnityEngine.SceneManagement;
using TMPro;

public class HighScoreManager : MonoBehaviour
{
    public TMP_InputField inputNombre; 
    public ScoreManager scoreManager;

    public void GuardarYVolverAlMenu()
    {
       
        Time.timeScale = 1;


        
        string nuevoNombre = inputNombre.text.Trim().ToUpper();
        if (string.IsNullOrEmpty(nuevoNombre) || nuevoNombre.Length < 1) nuevoNombre = "AAA";
        int nuevaPuntuacion = scoreManager.score;

        for (int i = 0; i < 5; i++)
        {
            int scoreGuardado = PlayerPrefs.GetInt("Score" + i, 0);
            if (nuevaPuntuacion > scoreGuardado)
            {
                for (int j = 4; j > i; j--)
                {
                    PlayerPrefs.SetInt("Score" + j, PlayerPrefs.GetInt("Score" + (j - 1)));
                    PlayerPrefs.SetString("Name" + j, PlayerPrefs.GetString("Name" + (j - 1)));
                }
                PlayerPrefs.SetInt("Score" + i, nuevaPuntuacion);
                PlayerPrefs.SetString("Name" + i, nuevoNombre);
                PlayerPrefs.Save();
                break;
            }
        }

        
        SceneManager.LoadScene(0);
    
}
}