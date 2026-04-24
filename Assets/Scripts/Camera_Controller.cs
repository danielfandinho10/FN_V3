using UnityEngine;

public class Camera_Controller : MonoBehaviour
{
    public float sensitivity = 200f;

    float xRotation = 0f;
    float yRotation = 0f;

    void Start()
    {
        Cursor.lockState = CursorLockMode.Locked;
        Cursor.visible = false;

        Vector3 rot = transform.rotation.eulerAngles;
        xRotation = rot.x;
        yRotation = rot.y;
    }

    void Update()
    {
        float mouseX = Input.GetAxis("Mouse X") * sensitivity * Time.deltaTime;
        float mouseY = Input.GetAxis("Mouse Y") * sensitivity * Time.deltaTime;

        xRotation -= mouseY;
        yRotation += mouseX;

        xRotation = Mathf.Clamp(xRotation, -45f, 45f);
        yRotation = Mathf.Clamp(yRotation, -50f, 50f);

        transform.rotation = Quaternion.Euler(xRotation, yRotation, 0f);
    }
}