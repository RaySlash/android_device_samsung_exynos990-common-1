#
# Copyright (C) 2020 The LineageOS Project
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

### PROPRIETARY VENDOR FILES
$(call inherit-product, vendor/samsung/exynos990-common/exynos990-common-vendor.mk)

PLATFORM_PATH := device/samsung/exynos990-common

# Dynamic Partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(PLATFORM_PATH) \
    hardware/google/pixel \
    hardware/samsung/hidl/power-libperfmgr

DEVICE_PACKAGE_OVERLAYS += \
    $(PLATFORM_PATH)/overlay \
    $(PLATFORM_PATH)/overlay-lineage

PRODUCT_ENFORCE_RRO_TARGETS += *

include $(PLATFORM_PATH)/platform/*.mk
