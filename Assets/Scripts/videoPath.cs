using UnityEngine;
using UnityEngine.Video;
using System.IO;

public class videoPath : MonoBehaviour
{
    public VideoPlayer videoPlayer;

    void Start()
    {
        string path = Path.Combine(Application.streamingAssetsPath, "MainMenu.mp4");
        videoPlayer.url = path;

        videoPlayer.Prepare();
        videoPlayer.prepareCompleted += (vp) =>
        {
            vp.Play();
        };
    }
}
