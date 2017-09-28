LOCAL_PATH := device/samsung/hero-common

# Include path
TARGET_SPECIFIC_HEADER_PATH := $(LOCAL_PATH)/include

# Firmware
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

# Extracted with libbootimg
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100
#BOARD_KERNEL_CMDLINE := The bootloader ignores the cmdline from the boot.img
BOARD_KERNEL_SEPARATED_DT := true
TARGET_CUSTOM_DTBTOOL := dtbhtoolExynos

# Samsung HALs
TARGET_AUDIOHAL_VARIANT := samsung
TARGET_POWERHAL_VARIANT := samsung
TARGET_SEC_FP_HAL_VARIANT := bauth

# Fonts
EXTENDED_FONT_FOOTPRINT := true

# Samsung Camera
BOARD_USE_SAMSUNG_CAMERAFORMAT_NV21 := true

# Graphics
USE_OPENGL_RENDERER := true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3

# Renderscript
BOARD_OVERRIDE_RS_CPU_VARIANT_32 := cortex-a53.a57
BOARD_OVERRIDE_RS_CPU_VARIANT_64 := exynos-m1

# Wifi
TARGET_USES_64_BIT_BCMDHD        := true
BOARD_WLAN_DEVICE                := bcmdhd
WPA_SUPPLICANT_VERSION           := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER             := NL80211
BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_bcmdhd
WIFI_DRIVER_FW_PATH_PARAM        := "/sys/module/dhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA          := "/system/etc/wifi/bcmdhd_sta.bin"
WIFI_DRIVER_FW_PATH_AP           := "/system/etc/wifi/bcmdhd_apsta.bin"
WIFI_BAND                        := 802_11_ABG

# Wifi Macloader
BOARD_HAVE_SAMSUNG_WIFI := true

# Charger
BOARD_CHARGING_MODE_BOOTING_LPM := /sys/class/power_supply/battery/batt_lp_charging
BOARD_CHARGER_ENABLE_SUSPEND := true
BOARD_CHARGER_SHOW_PERCENTAGE := true
CHARGING_ENABLED_PATH := /sys/class/power_supply/battery/batt_lp_charging

# Enable real time lockscreen charging current values
BOARD_GLOBAL_CFLAGS += -DBATTERY_REAL_INFO

# Healthd
RED_LED_PATH := "/sys/class/leds/led_r/brightness"
GREEN_LED_PATH := "/sys/class/leds/led_g/brightness"
BLUE_LED_PATH := "/sys/class/leds/led_b/brightness"
BACKLIGHT_PATH := "/sys/class/backlight/panel/brightness"

# RIL
BOARD_VENDOR := samsung
BOARD_MODEM_TYPE := ss333

# RIL.java overwrite
BOARD_RIL_CLASS := ../../../$(LOCAL_PATH)/ril

# Boot animation
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Properties
TARGET_SYSTEM_PROP := device/samsung/hero-common/system.prop

# Recovery
#RECOVERY_VARIANT := twrp
BOARD_HAS_DOWNLOAD_MODE := true
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/ramdisk/fstab.samsungexynos8890

# Seccomp filters
BOARD_SECCOMP_POLICY += $(LOCAL_PATH)/seccomp

# SELinux
BOARD_SEPOLICY_DIRS := $(LOCAL_PATH)/sepolicy

# Collect splitted Board Configs at ./board/
-include device/samsung/hero-common/board/*.mk

# Inherit from the proprietary version
-include vendor/samsung/hero-common/BoardConfigVendor.mk

# WFD
BOARD_USES_WFD := true
