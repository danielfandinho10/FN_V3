using UnityEngine;
using System.Collections;

public class MenuButtonsDelay : MonoBehaviour
{
    [SerializeField] private GameObject panelBotones;
    [SerializeField] private float segundosDeEspera = 2.5f;

    void Start()
    {
        // Al empezar la escena, ocultamos los botones y lanzamos la espera
        panelBotones.SetActive(false);
        StartCoroutine(MostrarBotones());
    }

    IEnumerator MostrarBotones()
    {
        // Si Time.timeScale es 1, esto funcionará perfecto
        yield return new WaitForSeconds(segundosDeEspera);
        panelBotones.SetActive(true);
    }
}