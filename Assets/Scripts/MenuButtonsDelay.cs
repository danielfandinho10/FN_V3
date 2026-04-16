using UnityEngine;
using System.Collections;

public partial class MenuButtonsDelay : MonoBehaviour
{
    [SerializeField] private GameObject panelBotones;
    [SerializeField] private float segundosDeEspera = 2.5f;

    void Start()
    {
        
        StartCoroutine(MostrarBotones());
    }

    IEnumerator MostrarBotones()
    {
        
        yield return new WaitForSeconds(segundosDeEspera);

        
        panelBotones.SetActive(true);
    }
}