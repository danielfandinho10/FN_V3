using UnityEngine;
using UnityEngine.SceneManagement; 

public class StartScene : MonoBehaviour
{

    void Awake()
    {
        Cursor.lockState = CursorLockMode.None;
        Cursor.visible = true;
    }
    public void EmpezarJuego()
    {
        SceneManager.LoadScene(1);


    }
    public void IrAScores()
    {
        SceneManager.LoadScene(2);
    }

    public void IrAMenu()
    {
        SceneManager.LoadScene(0);
    }
}