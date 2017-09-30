LOCAL_PATH := device/samsung/hero-common

# Include path
TARGET_SPECIFIC_HEADER_PATH := $(LOCAL_PATH)/include

# Camera
BOARD_USE_SAMSUNG_CAMERAFORMAT_NV21 := true

# Charger
BOARD_CHARGING_MODE_BOOTING_LPM := /sys/class/power_supply/battery/batt_lp_charging
BOARD_CHARGER_ENABLE_SUSPEND := true
BOARD_CHARGER_SHOW_PERCENTAGE := true
CHARGING_ENABLED_PATH := /sys/class/power_supply/battery/batt_lp_charging

# Fonts
EXTENDED_FONT_FOOTPRINT := true

# Power Hal
TARGET_POWERHAL_VARIANT := samsung

# Properties
TARGET_SYSTEM_PROP := device/samsung/hero-common/system.prop

# Renderscript
BOARD_OVERRIDE_RS_CPU_VARIANT_32 := cortex-a53.a57
BOARD_OVERRIDE_RS_CPU_VARIANT_64 := exynos-m1

# LED
RED_LED_PATH := "/sys/class/leds/led_r/brightness"
GREEN_LED_PATH := "/sys/class/leds/led_g/brightness"
BLUE_LED_PATH := "/sys/class/leds/led_b/brightness"
BACKLIGHT_PATH := "/sys/class/backlight/panel/brightness"

# NFC
BOARD_NFC_HAL_SUFFIX := universal8890

# RIL
BOARD_VENDOR := samsung
BOARD_MODEM_TYPE := ss333
BOARD_RIL_CLASS := ../../../$(LOCAL_PATH)/ril

# Sensors
TARGET_NO_SENSOR_PERMISSION_CHECK := true
TARGET_SEC_FP_HAL_VARIANT := bauth

# Lockscreen charging info: real time values
BOARD_GLOBAL_CFLAGS += -DBATTERY_REAL_INFO

# Virtual Display
BOARD_USES_VIRTUAL_DISPLAY := true

# SELinux
BOARD_SEPOLICY_DIRS := device/samsung/hero-common/sepolicy

# SECComp filters
BOARD_SECCOMP_POLICY += device/samsung/hero-common/seccomp

# Collect splitted Board Configs at ./board/
-include device/samsung/hero-common/board/*.mk

# Inherit from the proprietary version
-include vendor/samsung/hero-common/BoardConfigVendor.mk

# WFD
BOARD_USES_WFD := true
