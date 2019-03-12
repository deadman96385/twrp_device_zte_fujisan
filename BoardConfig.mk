DEVICE_TREE := device/zte/fujisan

# Bootloader
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := fujisan

# Platform
TARGET_BOARD_PLATFORM := msm8996
TARGET_BOARD_PLATFORM_GPU := qcom-adreno530

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := kryo
TARGET_CPU_SMP := true

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

# Kernel
TARGET_PREBUILT_KERNEL := $(DEVICE_TREE)/Image.gz-dtb

# Boot image
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 androidboot.hardware=qcom androidboot.selinux=permissive user_debug=31 msm_rtb.filter=0x237 ehci-hcd.park=3 lpm_levels.sleep_disabled=1 cma=512M@0-0xffffffff enforcing=0

BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_PAGESIZE := 4096
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE     := 65536000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 65536000
BOARD_SYSTEMIMAGE_PARTITION_SIZE   := 6815744000
#BOARD_USERDATAIMAGE_PARTITION_SIZE := 56276234240
BOARD_CACHEIMAGE_PARTITION_SIZE    := 1678336000
BOARD_FLASH_BLOCK_SIZE := 262144

# File systems
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# TWRP specific build flags
TW_THEME := portrait_hdpi
RECOVERY_SDCARD_ON_DATA := true
TARGET_RECOVERY_QCOM_RTC_FIX := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/soc/6a00000.ssusb/6a00000.dwc3/gadget/lun%d/file"
TW_BRIGHTNESS_PATH := "/sys/devices/soc/900000.qcom\x2cmdss_mdp/900000.qcom\x2cmdss_mdp:qcom\x2cmdss_fb_primary/leds/lcd-backlight/brightness"
TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_BRIGHTNESS := 153
TW_INCLUDE_NTFS_3G := true
TW_IGNORE_MISC_WIPE_DATA := true

# Asian region languages
TW_EXTRA_LANGUAGES := true
