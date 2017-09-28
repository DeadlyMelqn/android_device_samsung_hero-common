# TWRP specific
ifeq ($(RECOVERY_VARIANT),twrp)
TARGET_RECOVERY_FSTAB := device/samsung/hero-common/ramdisk/recovery.fstab
TW_BRIGHTNESS_PATH := "/sys/devices/13900000.dsim/backlight/panel/brightness"
TW_DEFAULT_BRIGHTNESS := 180
TW_EXCLUDE_SUPERSU := true
TW_EXTRA_LANGUAGES := true
TW_HAS_DOWNLOAD_MODE := true
TW_INCLUDE_CRYPTO := true
TW_INCLUDE_NTFS_3G := true
TW_MAX_BRIGHTNESS := 255
TW_NO_REBOOT_BOOTLOADER := true
TW_THEME := portrait_hdpi
else
TARGET_RECOVERY_FSTAB := device/samsung/hero-common/ramdisk/fstab.samsungexynos8890
endif
