#
# Copyright (C) 2020 The Paranoid Android Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Get non-open-source specific aspects
$(call inherit-product-if-exists, vendor/oneplus/oneplus8pro/oneplus8pro-vendor.mk)

# Overlays
PRODUCT_PACKAGES += \
    Oneplus8ProFrameworksRes

# Screen density
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# A/B
AB_OTA_UPDATER := true

AB_OTA_PARTITIONS += \
    boot \
    dtbo \
    system \
    vbmeta

AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    FILESYSTEM_TYPE_system=ext4 \
    POSTINSTALL_OPTIONAL_system=true

PRODUCT_PACKAGES += \
    otapreopt_script

# AID/fs configs
PRODUCT_PACKAGES += \
    fs_config_files

# Audio
PRODUCT_PACKAGES += \
    android.hardware.audio@5.0 \
    android.hardware.audio.common@5.0 \
    android.hardware.audio.common@5.0-util \
    android.hardware.audio.effect@5.0 \
    libaudio-resampler

# Boot control
PRODUCT_PACKAGES_DEBUG += \
    bootctl

# Bluetooth
PRODUCT_PACKAGES += \
    libbluetooth_qti \
    libbt-logClient.so

# Common init scripts
PRODUCT_PACKAGES += \
    init.qcom.rc \
    init.qcom.post_boot.sh

# Display
PRODUCT_PACKAGES += \
    libdisplayconfig \
    libqdMetaData.system

# Update engine
PRODUCT_PACKAGES += \
    brillo_update_payload \
    update_engine \
    update_engine_sideload \
    update_verifier

PRODUCT_PACKAGES += \
    android.hardware.boot@1.0-impl \
    android.hardware.boot@1.0-service

PRODUCT_STATIC_BOOT_CONTROL_HAL := \
    bootctrl.kona \
    libcutils \
    libgptutils \
    libz \

PRODUCT_PACKAGES_DEBUG += \
    update_engine_client

# NN
PRODUCT_PACKAGES += \
    libprotobuf-cpp-full-rtti

# Power
PRODUCT_PACKAGES += \
    power.qcom

# Input
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/idc/gf_input.idc:system/usr/idc/gf_input.idc \
    $(LOCAL_PATH)/keylayout/gf_input.kl:system/usr/keylayout/gf_input.kl
