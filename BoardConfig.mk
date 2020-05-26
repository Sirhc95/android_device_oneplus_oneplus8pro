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

# Inherit from oneplus sm8250-common
-include device/oneplus/sm8250-common/BoardConfigCommon.mk

DEVICE_PATH := device/oneplus/oneplus8pro

TARGET_OTA_ASSERT_DEVICE := oneplus8pro,OnePlus8Pro

# Display
TARGET_SCREEN_DENSITY := 400

# inherit from the proprietary version
-include vendor/oneplus/oneplus8pro/BoardConfigVendor.mk
