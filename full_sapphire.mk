# Copyright (C) 2009 The Android Open Source Project
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
# This file is the build configuration for a full Android
# build for sapphire hardware. This cleanly combines a set of
# device-specific aspects (drivers) with a device-agnostic
# product configuration (apps).
#

# 6355 Sapphire prelink
PRODUCT_SPECIFIC_DEFINES += TARGET_PRELINKER_MAP=\$(TOP)/device/htc/sapphire/prelink-linux-arm-sapphire6355.map

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, device/htc/sapphire/device_sapphire_us.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full.mk)

#Include JA
PRODUCT_LOCALES += ja_JP

#Additional Translations
PRODUCT_LOCALES += es_US ko_KR pl_PL pt_PT ru_RU zh_TW zh_CN

#pack fonts
TARGET_SQUASH_FONTS:=true

# Discard inherited values and use our own instead.
PRODUCT_NAME := full_sapphire
PRODUCT_DEVICE := sapphire
PRODUCT_MODEL := Gingerbread on Sapphire
