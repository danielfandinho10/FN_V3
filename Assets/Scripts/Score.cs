using System;

[Serializable]
public class ScoreEntry
{
    public string name;
    public int score;

    public ScoreEntry(string n, int s)
    {
        name = n;
        score = s;
    }
}