USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/htc/magnids/BoardConfigVendor.mk

TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := unknown
TARGET_CPU_ABI := armeabi
TARGET_CPU_ABI2 := armeabi
TARGET_BOOTLOADER_BOARD_NAME := magnids
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a5
TARGET_BOARD_PLATFORM := msm7627a
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

BOARD_KERNEL_CMDLINE := no_console_suspend=1 console=null
BOARD_KERNEL_BASE := 0x03200000 # matches magnids_defconfig CONFIG_PHYS_OFFSET=0x3200000
BOARD_KERNEL_PAGESIZE := 2048

# contents of /proc/emmc:
#
# dev:        size     erasesize name
# mmcblk0p17: 00040000 00000200 "misc"
# mmcblk0p21: 0087f400 00000200 "recovery"
# mmcblk0p22: 00400000 00000200 "boot"
# mmcblk0p25: 3bdffe00 00000200 "system"
# mmcblk0p27: 0ffffe00 00000200 "cache"
# mmcblk0p26: 4cfffe00 00000200 "userdata"
# mmcblk0p28: 017ade00 00000200 "devlog"
# mmcblk0p30: 00040000 00000200 "pdata"
# mmcblk0p31: 46800000 00000200 "fat"
# mmcblk0p29: 00011c00 00000200 "extra"

BOARD_BOOTIMAGE_PARTITION_SIZE := 4718592
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x0087f400
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x3bdffe00
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x4cfffe00
BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)
TARGET_PREBUILT_KERNEL := device/htc/magnids/zImage

BOARD_HAS_NO_SELECT_BUTTON := true

TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 480
DEVICE_RESOLUTION := 480x800
