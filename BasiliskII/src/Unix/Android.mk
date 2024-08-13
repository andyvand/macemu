SDL_IMAGE_LOCAL_PATH := $(call my-dir)

APP_PLATFORM := 21
APP_ALLOW_MISSING_DEPS := true
LOCAL_PATH = /Users/andyvand/Downloads/macemu/BasiliskII/src/Unix

# Enable this if you want PNG and JPG support with minimal dependencies
USE_STBIMAGE ?= true

# The additional formats below require downloading third party dependencies,
# using the external/download.sh script.

# Enable this if you want to support loading AVIF images
# The library path should be a relative path to this directory.
SUPPORT_AVIF ?= false
AVIF_LIBRARY_PATH := external/libavif
DAV1D_LIBRARY_PATH := external/dav1d

# Enable this if you want to support loading JPEG images using libjpeg
# The library path should be a relative path to this directory.
SUPPORT_JPG ?= false
SUPPORT_SAVE_JPG ?= true
JPG_LIBRARY_PATH := external/jpeg

# Enable this if you want to support loading JPEG-XL images
# The library path should be a relative path to this directory.
SUPPORT_JXL ?= false
JXL_LIBRARY_PATH := external/libjxl

# Enable this if you want to support loading PNG images using libpng
# The library path should be a relative path to this directory.
SUPPORT_PNG ?= false
SUPPORT_SAVE_PNG ?= true
PNG_LIBRARY_PATH := external/libpng

# Enable this if you want to support loading WebP images
# The library path should be a relative path to this directory.
SUPPORT_WEBP ?= false
WEBP_LIBRARY_PATH := external/libwebp

include $(CLEAR_VARS)

LOCAL_MODULE := BasliskII

LOCAL_SRC_FILES :=  $(LOCAL_PATH)/../uae_cpu_2021/basilisk_glue.cpp  $(LOCAL_PATH)/../uae_cpu_2021/memory.cpp  $(LOCAL_PATH)/../uae_cpu_2021/newcpu.cpp  $(LOCAL_PATH)/../uae_cpu_2021/readcpu.cpp  $(LOCAL_PATH)/../uae_cpu_2021/fpu/fpu_mpfr.cpp cpustbl.cpp cpudefs.cpp cpuemu1.cpp cpuemu2.cpp cpuemu3.cpp cpuemu4.cpp cpuemu5.cpp cpuemu6.cpp cpuemu7.cpp cpuemu8.cpp cpufunctbl.cpp  $(LOCAL_PATH)/../slirp/bootp.c  $(LOCAL_PATH)/../slirp/ip_output.c  $(LOCAL_PATH)/../slirp/tcp_input.c  $(LOCAL_PATH)/../slirp/cksum.c  $(LOCAL_PATH)/../slirp/mbuf.c  $(LOCAL_PATH)/../slirp/tcp_output.c  $(LOCAL_PATH)/../slirp/debug.c  $(LOCAL_PATH)/../slirp/misc.c  $(LOCAL_PATH)/../slirp/tcp_subr.c  $(LOCAL_PATH)/../slirp/if.c  $(LOCAL_PATH)/../slirp/sbuf.c  $(LOCAL_PATH)/../slirp/tcp_timer.c  $(LOCAL_PATH)/../slirp/ip_icmp.c  $(LOCAL_PATH)/../slirp/slirp.c  $(LOCAL_PATH)/../slirp/tftp.c  $(LOCAL_PATH)/../slirp/ip_input.c  $(LOCAL_PATH)/../slirp/socket.c  $(LOCAL_PATH)/../slirp/udp.c  $(LOCAL_PATH)/../guichan/guichan-gui.cpp  $(LOCAL_PATH)/../guichan/menuLoad_guichan.cpp  $(LOCAL_PATH)/../guichan/menuTabDisplaySound.cpp  $(LOCAL_PATH)/../guichan/menuTabMisc.cpp  $(LOCAL_PATH)/../guichan/menuTabVolumes.cpp  $(LOCAL_PATH)/../guichan/menuTabNetwork.cpp  $(LOCAL_PATH)/../guichan/rw_config.cpp  $(LOCAL_PATH)/../CrossPlatform/vm_alloc.cpp  $(LOCAL_PATH)/../CrossPlatform/sigsegv.cpp  $(LOCAL_PATH)/../CrossPlatform/video_blit.cpp  $(LOCAL_PATH)/../main.cpp  $(LOCAL_PATH)/../prefs.cpp  $(LOCAL_PATH)/../prefs_items.cpp sys_unix.cpp  $(LOCAL_PATH)/../rom_patches.cpp  $(LOCAL_PATH)/../slot_rom.cpp  $(LOCAL_PATH)/../rsrc_patches.cpp  $(LOCAL_PATH)/../emul_op.cpp  $(LOCAL_PATH)/../macos_util.cpp  $(LOCAL_PATH)/../xpram.cpp xpram_unix.cpp  $(LOCAL_PATH)/../timer.cpp timer_unix.cpp  $(LOCAL_PATH)/../adb.cpp  $(LOCAL_PATH)/../serial.cpp  $(LOCAL_PATH)/../ether.cpp  $(LOCAL_PATH)/../sony.cpp  $(LOCAL_PATH)/../disk.cpp  $(LOCAL_PATH)/../cdrom.cpp  $(LOCAL_PATH)/../scsi.cpp  $(LOCAL_PATH)/../video.cpp  $(LOCAL_PATH)/../audio.cpp  $(LOCAL_PATH)/../extfs.cpp disk_sparsebundle.cpp tinyxml2.cpp  $(LOCAL_PATH)/../user_strings.cpp user_strings_unix.cpp sshpty.c strlcpy.c rpc_unix.cpp

LOCAL_C_INCLUDES += $(LOCAL_PATH)/include /Users/andyvand/Library/Android/sdk/ndk/27.0.12077973/toolchains/llvm/prebuilt/darwin-x86_64/sysroot/usr/include/SDL2
LOCAL_CFLAGS := -I/Users/andyvand/Library/Android/sdk/ndk/27.0.12077973/toolchains/llvm/prebuilt/darwin-x86_64/sysroot/usr/include/SDL2 -fexceptions -frtti
LOCAL_LDLIBS :=
LOCAL_LDFLAGS := -lc++ -lc++abi
LOCAL_STATIC_LIBRARIES :=
LOCAL_SHARED_LIBRARIES :=
LOCAL_EXPORT_C_INCLUDES += $(LOCAL_PATH)/include

include $(BUILD_SHARED_LIBRARY)
