#
# Copyright (C) 2024 BlissLabs
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

# Inherit 64-bit target architecture
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_default.mk)

TARGET_ARCH := x86_64
TARGET_ARCH_VARIANT := x86_64
TARGET_2ND_ARCH := x86
TARGET_2ND_ARCH_VARIANT := x86_64

PRODUCT_NAME := bliss_framework_x86_64
PRODUCT_DEVICE := generic_x86_64
PRODUCT_BRAND := BlissLabs
PRODUCT_MODEL := Bliss Framework Target

# Explicitly ensure clean namespace without emulator/goldfish
PRODUCT_SOONG_NAMESPACES := 

# Minimal framework packages
PRODUCT_PACKAGES += \
    framework-minus-apex \
    framework-res

TARGET_NO_KERNEL := true
TARGET_NO_RECOVERY := true
MODULE_BUILD_FROM_SOURCE := true
PRODUCT_ENFORCE_ARTIFACT_PATH_REQUIREMENTS := false
