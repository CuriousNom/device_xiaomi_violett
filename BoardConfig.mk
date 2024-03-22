#
# Copyright (C) 2018-2020 The LineageOS Project
# Copyright (C) 2020 The PixelExperience Project
#
# SPDX-License-Identifier: Apache-2.0
#

BOARD_VENDOR := xiaomi

DEVICE_PATH := device/xiaomi/violet

# Build
BUILD_BROKEN_DUP_RULES := true
BUILD_BROKEN_MISSING_REQUIRED_MODULES := true
BUILD_BROKEN_ELF_PREBUILT_PRODUCT_COPY_FILES := true
BUILD_BROKEN_ENFORCE_SYSPROP_OWNER := true
BUILD_BROKEN_CLANG_PROPERTY := true
BUILD_BROKEN_INCORRECT_PARTITION_IMAGES := true

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-2a-dotprod
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_VARIANT := cortex-a55

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-2a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a55

# Assert
TARGET_OTA_ASSERT_DEVICE := violet

# ANT+
BOARD_ANT_WIRELESS_DEVICE := "vfs-prerelease"

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := sm6150
TARGET_NO_BOOTLOADER := true

# Android Verified Boot
BOARD_AVB_ENABLE := true
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --flags 3
BOARD_AVB_RECOVERY_ALGORITHM := SHA256_RSA4096
BOARD_AVB_RECOVERY_KEY_PATH := external/avb/test/data/testkey_rsa4096.pem
BOARD_AVB_RECOVERY_ROLLBACK_INDEX := 1
BOARD_AVB_RECOVERY_ROLLBACK_INDEX_LOCATION := 1

# Kernel
BOARD_BOOT_HEADER_VERSION := 1
BOARD_KERNEL_CMDLINE := androidboot.hardware=qcom androidboot.console=ttyMSM0 service_locator.enable=1 swiotlb=1 earlycon=msm_geni_serial,0x880000 loop.max_part=7 kpti=off
BOARD_KERNEL_CMDLINE +=  androidboot.vbmeta.avb_version=1.0
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
BOARD_KERNEL_PAGESIZE := 4096
TARGET_KERNEL_ADDITIONAL_FLAGS := \
    DTC_EXT=$(shell pwd)/prebuilts/misc/$(HOST_OS)-x86/dtc/dtc
BOARD_KERNEL_SEPARATED_DTBO := true
BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOT_HEADER_VERSION)
TARGET_KERNEL_SOURCE := kernel/xiaomi/violet
TARGET_KERNEL_CONFIG := vendor/violet-perf_defconfig
TARGET_KERNEL_CLANG_COMPILE := true
BOARD_RAMDISK_OFFSET := 0x01000000

TARGET_KERNEL_CLANG_VERSION := r522817
KERNEL_CLANG_TRIPLE := CLANG_TRIPLE=aarch64-linux-gnu-
TARGET_KERNEL_ADDITIONAL_FLAGS := LLVM=1 LLVM_IAS=1

# Platform
TARGET_BOARD_PLATFORM := sm6150
TARGET_BOARD_PLATFORM_GPU := qcom-adreno612

# Audio
AUDIO_FEATURE_ENABLED_COMPRESS_VOIP := false
AUDIO_FEATURE_ENABLED_CON_THREAD := true
AUDIO_FEATURE_ENABLED_DS2_DOLBY_DAP := true
AUDIO_FEATURE_ENABLED_DTS_EAGLE := false
AUDIO_FEATURE_ENABLED_EXTENDED_COMPRESS_FORMAT := true
AUDIO_FEATURE_ENABLED_FM_POWER_OPT := true
AUDIO_FEATURE_ENABLED_GEF_SUPPORT := true
AUDIO_FEATURE_ENABLED_HW_ACCELERATED_EFFECTS := false
AUDIO_FEATURE_ENABLED_INSTANCE_ID := true
AUDIO_FEATURE_ENABLED_NT_PAUSE_TIMEOUT := true
BOARD_SUPPORTS_QAHW := false
BOARD_SUPPORTS_SOUND_TRIGGER := true
BOARD_USES_ALSA_AUDIO := true
TARGET_USES_QCOM_MM_AUDIO := true

# Display
TARGET_SCREEN_DENSITY := 440
TARGET_USES_DISPLAY_RENDER_INTENTS := true

# DPM
BOARD_USES_DPM := true

# DRM
TARGET_ENABLE_MEDIADRM_64 := true

# Filesystem
TARGET_FS_CONFIG_GEN := $(DEVICE_PATH)/config.fs

# FM
BOARD_HAS_QCA_FM_SOC := "cherokee"
BOARD_HAVE_QCOM_FM := true

# HWUI
HWUI_COMPILE_FOR_PERF := true

# GPS
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := default
GNSS_HIDL_VERSION := 2.1
LOC_HIDL_VERSION := 4.0
USE_DEVICE_SPECIFIC_GPS := true

# Graphics
TARGET_USES_DRM_PP := true
TARGET_USES_GRALLOC4 := true
TARGET_USES_HWC2 := true
TARGET_USES_ION := true
TARGET_USES_QTI_MAPPER_2_0 := true
TARGET_USES_QTI_MAPPER_EXTENSIONS_1_1 := true
USE_OPENGL_RENDERER := true

# HIDL
DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE := \
    $(DEVICE_PATH)/framework_compatibility_matrix.xml \
    vendor/superior/config/device_framework_matrix.xml
DEVICE_MANIFEST_FILE := $(DEVICE_PATH)/manifest.xml
DEVICE_MATRIX_FILE := hardware/qcom-caf/common/compatibility_matrix.xml
DEVICE_FRAMEWORK_MANIFEST_FILE := $(DEVICE_PATH)/framework_manifest.xml

# Input
TARGET_INPUTDISPATCHER_SKIP_EVENT_KEY := 96

# Lineage Health
TARGET_HEALTH_CHARGING_CONTROL_CHARGING_PATH := /sys/class/qcom-battery/input_suspend
TARGET_HEALTH_CHARGING_CONTROL_CHARGING_ENABLED := 0
TARGET_HEALTH_CHARGING_CONTROL_CHARGING_DISABLED := 1
TARGET_HEALTH_CHARGING_CONTROL_SUPPORTS_BYPASS := false

# Media
TARGET_DISABLED_UBWC := true
TARGET_USES_MEDIA_EXTENSIONS := true

# Partitions
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := f2fs
BOARD_CACHEIMAGE_PARTITION_SIZE := 268435456
BOARD_DTBOIMG_PARTITION_SIZE := 0x0800000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864
BOARD_USERDATAIMAGE_PARTITION_SIZE := 57453555712

BOARD_ODMIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_PRODUCTIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_SYSTEMIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_SYSTEM_EXTIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
PRODUCT_FS_COMPRESSION := 1

ifeq ($(BUILD_WITH_GAPPS),true)
BOARD_PRODUCTIMAGE_PARTITION_RESERVED_SIZE := 629145600 # 600 MB
BOARD_SYSTEMIMAGE_PARTITION_RESERVED_SIZE := 419430400 # 400 MB
BOARD_SYSTEM_EXTIMAGE_PARTITION_RESERVED_SIZE := 419430400 # 400 MB
else
BOARD_PRODUCTIMAGE_PARTITION_RESERVED_SIZE := 1048576000 # 1 GB
BOARD_SYSTEMIMAGE_PARTITION_RESERVED_SIZE := 838860800 # 800 MB
BOARD_SYSTEM_EXTIMAGE_PARTITION_RESERVED_SIZE := 524288000 # 500 MB
endif
BOARD_ODMIMAGE_PARTITION_RESERVED_SIZE := 10485760 # 10 MB
BOARD_VENDORIMAGE_PARTITION_RESERVED_SIZE := 104857600 # 100 MB

BOARD_USES_METADATA_PARTITION := true

BOARD_BOOTIMAGE_PARTITION_SIZE := 0x04000000
BOARD_FLASH_BLOCK_SIZE := 262144 # (BOARD_KERNEL_PAGESIZE * 64)

BOARD_SUPER_PARTITION_BLOCK_DEVICES := cust vendor system
BOARD_SUPER_PARTITION_METADATA_DEVICE := system
BOARD_SUPER_PARTITION_CUST_DEVICE_SIZE := 872415232
BOARD_SUPER_PARTITION_VENDOR_DEVICE_SIZE := 2147483648
BOARD_SUPER_PARTITION_SYSTEM_DEVICE_SIZE := 3758096384
BOARD_SUPER_PARTITION_SIZE := $(shell expr $(BOARD_SUPER_PARTITION_VENDOR_DEVICE_SIZE) + $(BOARD_SUPER_PARTITION_SYSTEM_DEVICE_SIZE) + $(BOARD_SUPER_PARTITION_CUST_DEVICE_SIZE) )
BOARD_SUPER_PARTITION_GROUPS := violet_dynamic_partitions
BOARD_VIOLET_DYNAMIC_PARTITIONS_SIZE := $(shell expr $(BOARD_SUPER_PARTITION_SIZE) - 4194304 )
BOARD_VIOLET_DYNAMIC_PARTITIONS_PARTITION_LIST := odm product system system_ext vendor

TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

TARGET_COPY_OUT_ODM := odm
TARGET_COPY_OUT_PRODUCT := product
TARGET_COPY_OUT_SYSTEM_EXT := system_ext
TARGET_COPY_OUT_VENDOR := vendor

# Properties
TARGET_ODM_PROP += $(DEVICE_PATH)/odm.prop
TARGET_PRODUCT_PROP += $(DEVICE_PATH)/product.prop
TARGET_SYSTEM_EXT_PROP += $(DEVICE_PATH)/system_ext.prop
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# QCOM
BOARD_USES_QCOM_HARDWARE := true

# Recovery
BOARD_INCLUDE_DTB_IN_BOOTIMG := true
BOARD_INCLUDE_RECOVERY_DTBO := true
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.recovery
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TARGET_RECOVERY_UI_MARGIN_HEIGHT := 35

# Releasetools
TARGET_RELEASETOOLS_EXTENSIONS := $(DEVICE_PATH)

# RIL
ENABLE_VENDOR_RIL_SERVICE := true
TARGET_USES_PRE_UPLINK_FEATURES_NETMGRD := true

# Security
VENDOR_SECURITY_PATCH := 2021-05-01

# Sepolicy
TARGET_SEPOLICY_DIR := msmsteppe
include device/qcom/sepolicy_vndr/legacy-um/SEPolicy.mk
SYSTEM_EXT_PRIVATE_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy/private
SYSTEM_EXT_PUBLIC_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy/public
BOARD_VENDOR_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy/vendor

# WiFi
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_qcwcn
BOARD_WLAN_DEVICE := qcwcn
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_qcwcn
QC_WIFI_HIDL_FEATURE_DUAL_AP := true
WIFI_DRIVER_DEFAULT := qca_cld3
WIFI_DRIVER_STATE_CTRL_PARAM := "/dev/wlan"
WIFI_DRIVER_STATE_OFF := "OFF"
WIFI_DRIVER_STATE_ON := "ON"
WIFI_HIDL_FEATURE_AWARE := true
WIFI_HIDL_FEATURE_DUAL_INTERFACE := true
WIFI_HIDL_UNIFIED_SUPPLICANT_SERVICE_RC_ENTRY := true
WPA_SUPPLICANT_VERSION := VER_0_8_X

# Inherit from the proprietary version
include vendor/xiaomi/violet/BoardConfigVendor.mk
