using UnityEngine;
using System.IO;

public class BeatJsonTool : MonoBehaviour
{
    public float bpm = 120;
    public int bars = 16;
    public int maxPerBar = 3;
    public float offset = 0.05f;

    public string path = "Assets/song_config.json";

    public void GenerateJson()
    {
        string json =
        "{\n" +
        "\"bpm\":" + bpm + ",\n" +
        "\"bars\":" + bars + ",\n" +
        "\"maxPerBar\":" + maxPerBar + ",\n" +
        "\"offset\":" + offset + "\n" +
        "}";

        File.WriteAllText(path, json);
        Debug.Log("JSON creado: " + path);
    }
}