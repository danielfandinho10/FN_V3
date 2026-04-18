using UnityEngine;
using UnityEngine.SceneManagement;

public class MenuBack : MonoBehaviour
{
   public void VolverAlMenu()
{
        Time.timeScale = 1;
        SceneManager.LoadScene(0);

    
}
}
