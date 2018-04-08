#
# Copyright (C) 2014 The Android Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit common language setup
$(call inherit-product, build/target/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Files needed for recovery image
PRODUCT_COPY_FILES += \
device/huawei/gelliot/kernel:kernel \
device/huawei/gelliot/dt.img:dt.img \
device/huawei/gelliot/init.recovery.usb.rc:root/init.recovery.usb.rc \
device/huawei/gelliot/init.recovery.qcom.rc:root/init.recovery.qcom.rc \
device/huawei/gelliot/init.qcom.usb.sh:root/init.qcom.usb.sh \
device/huawei/gelliot/recovery/sbin/charge:/recovery/root/sbin/charge \
device/huawei/gelliot/recovery/sbin/chargelog.sh:/recovery/root/sbin/chargelog.sh \
device/huawei/gelliot/recovery/sbin/rmt_storage:/recovery/root/sbin/rmt_storage \
device/huawei/gelliot/recovery/sbin/charge_recovery:/recovery/root/sbin/charge_recovery \
device/huawei/gelliot/recovery/sbin/rmt_storage_recovery:/recovery/root/sbin/rmt_storage_recovery \
device/huawei/gelliot/recovery/sbin/rmt_oeminfo_recovery:/recovery/root/sbin/rmt_oeminfo_recovery \
device/huawei/gelliot/recovery/sbin/linker:/recovery/root/sbin/linker \
device/huawei/gelliot/recovery/sbin/charge.sh:/recovery/root/sbin/charge.sh \
device/huawei/gelliot/recovery/tp/1191601.img:root/tp/1191601.img
