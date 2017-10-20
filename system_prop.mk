# Dalvik/Art
PRODUCT_PROPERTY_OVERRIDES += \
	ro.sys.fw.dex2oat_thread_count=4 \
	dalvik.vm.heapstartsize=8m \
	dalvik.vm.heapgrowthlimit=256m \
	dalvik.vm.heapsize=512m \
	dalvik.vm.heaptargetutilization=0.75 \
	dalvik.vm.heapminfree=2m \
	dalvik.vm.heapmaxfree=8m

# Hwui
PRODUCT_PROPERTY_OVERRIDES += \
	ro.hwui.use_gpu_pixel_buffers=true \
	ro.hwui.texture_cache_size=176 \
	ro.hwui.layer_cache_size=106 \
	ro.hwui.path_cache_size=64 \
	ro.hwui.shape_cache_size=16 \
	ro.hwui.gradient_cache_size=8 \
	ro.hwui.drop_shadow_cache_size=24 \
	ro.hwui.r_buffer_cache_size=24 \
	ro.hwui.text_small_cache_width=4096 \
	ro.hwui.text_small_cache_height=4096 \
	ro.hwui.text_large_cache_width=8192 \
	ro.hwui.text_large_cache_height=8192

# Network
# Define default initial receive window size in segments.
PRODUCT_PROPERTY_OVERRIDES += \
	net.tcp.default_init_rwnd=60

# sdcardfs
PRODUCT_PROPERTY_OVERRIDES += \
	ro.sys.sdcardfs=true

# Audio
PRODUCT_PROPERTY_OVERRIDES += \
	af.fast_track_multiplier=1 \
	audio_hal.force_voice_config=wide

# Bluetooth workaround:
# The new CAF code defaults to MCT HAL, but we
# need the old H4 HAL for our Broadcom WiFi.
PRODUCT_PROPERTY_OVERRIDES += \
	qcom.bluetooth.soc=rome

PRODUCT_PROPERTY_OVERRIDES += \
	ro.bt.bdaddr_path="/efs/bluetooth/bt_addr"

# Graphics
PRODUCT_PROPERTY_OVERRIDES += \
	debug.composition.type=dyn \
	ro.opengles.version=196610 \
	video.accelerate.hw=1 \
	debug.egl.profiler=1 \
	ro.sf.lcd_density=640 \
	debug.sf.hw=1 \
	debug.egl.hw=1 \
	debug.hwc.force_gpu=0 \
	debug.hwc.max_hw_overlays=1 \
	persist.sys.ui.hw=true

# NFC
PRODUCT_PROPERTY_OVERRIDES += \
	ro.nfc.sec_hal=true \
	ro.nfc.port="I2C"

# Radio
PRODUCT_PROPERTY_OVERRIDES += \
	persist.radio.add_power_save=1 \
	persist.radio.apm_sim_not_pwdn=1 \
	rild.libpath=/system/lib64/libsec-ril.so \
	rild.libpath2=/system/lib64/libsec-ril-dsds.so \
	ro.telephony.default_network=9 \
	ro.telephony.ril_class=SlteRIL \
	ro.ril.gprsclass=10 \
	ro.ril.hsxpa=1 \
	ro.ril.telephony.mqanelements=6 \
	telephony.lteOnGsmDevice=1 \
	telephony.lteOnCdmaDevice=0

# WIFI
PRODUCT_PROPERTY_OVERRIDES += \
	wifi.interface=wlan0

# Performance
PRODUCT_PROPERTY_OVERRIDES += \
	debug.performance.tuning=1

# Power-Management
PRODUCT_PROPERTY_OVERRIDES += \
	pm.sleep_mode=1

# Surface
PRODUCT_PROPERTY_OVERRIDES += \
	persist.sys.scrollingcache=1 \
	persist.sys.purgeable_assets=1 \
	ro.compcache.default=18 \
	ro.max.fling_velocity=12000 \
	ro.min.fling_velocity=8000

ADDITIONAL_DEFAULT_PROPERTIES += \
	ro.secure=0 \
	ro.adb.secure=0 \
	ro.hardware=universal8890 \
	persist.service.adb.enable=1 \
	persist.service.debuggable=1 \
	persist.sys.usb.config=adb \
	ro.securestorage.support=false

# Properties
PRODUCT_PROPERTY_OVERRIDES += \
	media.sf.omx-plugin=libffmpeg_omx.so,libsomxcore.so
