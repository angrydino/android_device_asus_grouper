#
# Copyright (C) 2012 The CyanogenMod Project
# Copyright (C) 2012 The Carbon Project
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

USE_CAMERA_STUB := true
USE_PROPRIETARY_AUDIO_EXTENSIONS := false
BOARD_LIB_DUMPSTATE := libdumpstate.grouper

TARGET_RELEASETOOLS_EXTENSIONS := device/asus/grouper

-include vendor/asus/grouper/BoardConfigVendor.mk

include device/asus/grouper/BoardConfigCommon.mk

TARGET_OTA_ASSERT_DEVICE := grouper

TARGET_RECOVERY_FSTAB = device/asus/grouper/fstab.grouper
RECOVERY_FSTAB_VERSION = 2

BOARD_SEPOLICY_DIRS := \
        device/asus/grouper/sepolicy

BOARD_SEPOLICY_UNION := \
        file_contexts \
        genfs_contexts \
        app.te \
        btmacreader.te \
        compatibility.te \
        device.te \
        drmserver.te \
        init_shell.te \
        file.te \
        rild.te \
        sensors_config.te \
        shell.te \
        surfaceflinger.te \
        system.te \
        zygote.te
