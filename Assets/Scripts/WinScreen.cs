using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class WinScreen : MonoBehaviour
{
    [Header("Configuración")]
    public float tiempoParaGanar = 30f;
    public GameObject panelFinal;

    [Header("Intercambio de Sprites (Letrero)")]
    public Image imagenASustituir;
    public Sprite spriteVictoria;

    [Header("Intercambio de Fondos (Colores)")]
    public GameObject fondoRojo;   
    public GameObject fondoVerde;  

    void Start()
    {
        
        if (fondoRojo != null) fondoRojo.SetActive(true);
        if (fondoVerde != null) fondoVerde.SetActive(false);

        StartCoroutine(CuentaAtras());
    }

    IEnumerator CuentaAtras()
    {
        yield return new WaitForSeconds(tiempoParaGanar);
        ActivarVictoria();
    }

    void ActivarVictoria()
    {
        
        if (imagenASustituir != null && spriteVictoria != null)
        {
            imagenASustituir.sprite = spriteVictoria;
        }

        
        if (fondoRojo != null) fondoRojo.SetActive(false);
        if (fondoVerde != null) fondoVerde.SetActive(true);

       
        if (panelFinal != null)
        {
            panelFinal.SetActive(true);
            Time.timeScale = 0;
            Cursor.lockState = CursorLockMode.None;
            Cursor.visible = true;
        }
    }
}