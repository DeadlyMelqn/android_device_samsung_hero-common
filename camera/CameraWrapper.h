#include <utils/String8.h>
#include <hardware/hardware.h>
#include <hardware/camera.h>
#include <camera/Camera.h>
#include <camera/CameraParameters.h>
#include <camera/CameraParametersExtra.h>

static android::Mutex gCameraWrapperLock;

static int camera_device_open(const hw_module_t* module, const char* name,
                hw_device_t** device);
static int camera_device_close(hw_device_t* device);
static int camera_get_number_of_cameras(void);
static int camera_get_camera_info(int camera_id, struct camera_info *info);
static int camera_set_callbacks(const camera_module_callbacks_t *callbacks);
static void camera_get_vendor_tag_ops(vendor_tag_ops_t* ops);
static int camera_open_legacy(const struct hw_module_t* module, const char* id, uint32_t halVersion, struct hw_device_t** device);
