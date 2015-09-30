USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/ZOPO/ZP951/BoardConfigVendor.mk

TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := mt6753
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a7
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true


TARGET_BOOTLOADER_BOARD_NAME := ZP951

BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2
BOARD_KERNEL_BASE := 0x40078000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x03f88000 --tags_offset 0x0df88000

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_PREBUILT_KERNEL := device/ZOPO/ZP951/kernel

BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_USE_CUSTOM_RECOVERY_FONT := \"fontcn36_22x56.h\"
TARGET_RECOVERY_PIXEL_FORMAT := "RGBA_8888"

#分辨率
DEVICE_RESOLUTION := 1080x1920
TARGET_SCREEN_WIDTH := 1080
TARGET_SCREEN_HEIGHT := 1920

#USB挂载
BOARD_UMS_LUNFILE := "/sys/devices/platform/mt_usb/musb-hdrc.0.auto/gadget/lun0/file"
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/platform/mt_usb/musb-hdrc.0.auto/gadget/lun%d/file"

#屏幕背光亮度
TARGET_BRIGHTNESS_PATH := /sys/devices/platform/leds-mt65xx/leds/lcd-backlight/brightness
TARGET_MAX_BRIGHTNESS := 255

#ext4
BOARD_USES_MMCUTILS := true
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# NO select
BOARD_HAS_SLOW_STORAGE := true

#touch
BOARD_RECOVERY_SWIPE := true

#使用虚拟按键
RECOVERY_USE_VIRTUAL_KEY := true

#修复双清缓慢
BOARD_NO_SECURE_DISCARD := true
COMMON_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD

#/data/media/
RECOVERY_SDCARD_ON_DATA:= true
BOARD_HAS_NO_REAL_SDCARD:= true
RECOVERY_USE_MIGRATED_STORAGE := true

ADDITIONAL_DEFAULT_PROPERTIES += ro.secure=0 \
ro.allow.mock.location=1 \
persist.mtk.aee.aed=on \
ro.debuggable=1 \
persist.service.acm.enable=0 \
persist.sys.usb.config=mass_storage \
ro.mount.fs=EXT4
