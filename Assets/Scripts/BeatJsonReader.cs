using UnityEngine;
using System;

public class BeatJsonReader : MonoBehaviour
{
    public TextAsset json;

    [HideInInspector] public float bpm;
    [HideInInspector] public int bars;
    [HideInInspector] public int maxPerBar;
    [HideInInspector] public float offset;

    [Serializable]
    class Data
    {
        public float bpm;
        public int bars;
        public int maxPerBar;
        public float offset;
    }

    public void LoadConfig()
    {
        if (json == null) return;

        Data d = JsonUtility.FromJson<Data>(json.text);

        bpm = d.bpm;
        bars = d.bars;
        maxPerBar = d.maxPerBar;
        offset = d.offset;
    }
}