LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := SDL2
LOCAL_SRC_FILES := $(LOCAL_PATH)/lib/$(APP_ABI)/libSDL2.so
#LOCAL_EXPORT_C_INCLUDES :=
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)

LOCAL_MODULE := SDL2_image
LOCAL_SRC_FILES := $(LOCAL_PATH)/lib/$(APP_ABI)/libSDL2_image.so
#LOCAL_EXPORT_C_INCLUDES :=
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)

LOCAL_MODULE := SDL2_ttf
LOCAL_SRC_FILES := $(LOCAL_PATH)/lib/$(APP_ABI)/libSDL2_ttf.so
#LOCAL_EXPORT_C_INCLUDES :=
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)

LOCAL_MODULE := main

LOCAL_C_INCLUDES := $(LOCAL_PATH)/$(SDL_PATH)/include
LOCAL_CFLAGS :=  -D_REENTRANT -DUSE_FREESANS_TTF -DDIRECT_ADDRESSING -DFPU_MPFR -DUPDATE_UAE -Dguisan_GUI -DANDROIDSDL -DDATADIR=\"$(datadir)/$(APP)\" -I. -I../../../../../MacOSX -I$(LOCAL_PATH)/../../../../../include -I$(LOCAL_PATH)/../../../../../Unix -I$(LOCAL_PATH)/../../../../../CrossPlatform -I$(LOCAL_PATH)/../../../../../kpx_cpu/include  -I$(LOCAL_PATH)/../../../../../kpx_cpu/src -I$(LOCAL_PATH)/../../../../../slirp -fexceptions -frtti -fPIC -I$(HOME)/Library/Android/sdk/ndk/26.1.10909125/toolchains/llvm/prebuilt/darwin-x86_64/sysroot/usr/include/SDL2

# Add your application source files here...
LOCAL_SRC_FILES := $(LOCAL_PATH)/../../../../../kpx_cpu/src/mathlib/ieeefp.cpp     $(LOCAL_PATH)/../../../../../kpx_cpu/src/mathlib/mathlib.cpp     $(LOCAL_PATH)/../../../../../kpx_cpu/src/cpu/ppc/ppc-cpu.cpp     $(LOCAL_PATH)/../../../../../kpx_cpu/src/cpu/ppc/ppc-decode.cpp     $(LOCAL_PATH)/../../../../../kpx_cpu/src/cpu/ppc/ppc-execute.cpp     $(LOCAL_PATH)/../../../../../kpx_cpu/src/cpu/ppc/ppc-translate.cpp     $(LOCAL_PATH)/../../../../../kpx_cpu/src/utils/utils-cpuinfo.cpp $(LOCAL_PATH)/../../../../../kpx_cpu/sheepshaver_glue.cpp $(LOCAL_PATH)/../../../../../kpx_cpu/ppc-dis.c $(LOCAL_PATH)/../../../../../thunks.cpp $(LOCAL_PATH)/../../../../../slirp/bootp.c  $(LOCAL_PATH)/../../../../../slirp/ip_output.c  $(LOCAL_PATH)/../../../../../slirp/tcp_input.c  $(LOCAL_PATH)/../../../../../slirp/cksum.c  $(LOCAL_PATH)/../../../../../slirp/mbuf.c  $(LOCAL_PATH)/../../../../../slirp/tcp_output.c  $(LOCAL_PATH)/../../../../../slirp/debug.c  $(LOCAL_PATH)/../../../../../slirp/misc.c  $(LOCAL_PATH)/../../../../../slirp/tcp_subr.c  $(LOCAL_PATH)/../../../../../slirp/if.c  $(LOCAL_PATH)/../../../../../slirp/sbuf.c  $(LOCAL_PATH)/../../../../../slirp/tcp_timer.c  $(LOCAL_PATH)/../../../../../slirp/ip_icmp.c  $(LOCAL_PATH)/../../../../../slirp/slirp.c  $(LOCAL_PATH)/../../../../../slirp/tftp.c  $(LOCAL_PATH)/../../../../../slirp/ip_input.c  $(LOCAL_PATH)/../../../../../slirp/socket.c  $(LOCAL_PATH)/../../../../../slirp/udp.c  $(LOCAL_PATH)/../../../../../guisan/guichan-gui.cpp  $(LOCAL_PATH)/../../../../../guisan/menuLoad_guichan.cpp  $(LOCAL_PATH)/../../../../../guisan/menuTabDisplaySound.cpp  $(LOCAL_PATH)/../../../../../guisan/menuTabMisc.cpp  $(LOCAL_PATH)/../../../../../guisan/menuTabVolumes.cpp  $(LOCAL_PATH)/../../../../../guisan/menuTabNetwork.cpp  $(LOCAL_PATH)/../../../../../guisan/rw_config.cpp  $(LOCAL_PATH)/../../../../../CrossPlatform/vm_alloc.cpp  $(LOCAL_PATH)/../../../../../CrossPlatform/sigsegv.cpp  $(LOCAL_PATH)/../../../../../CrossPlatform/video_blit.cpp  $(LOCAL_PATH)/../../../../../main.cpp $(LOCAL_PATH)/../../../../main_unix.cpp $(LOCAL_PATH)/../../../../../prefs.cpp  $(LOCAL_PATH)/../../../../../prefs_items.cpp $(LOCAL_PATH)/../../../../sys_unix.cpp  $(LOCAL_PATH)/../../../../../rom_patches.cpp  $(LOCAL_PATH)/../../../../../rsrc_patches.cpp  $(LOCAL_PATH)/../../../../../emul_op.cpp  $(LOCAL_PATH)/../../../../../macos_util.cpp  $(LOCAL_PATH)/../../../../../xpram.cpp $(LOCAL_PATH)/../../../../xpram_unix.cpp  $(LOCAL_PATH)/../../../../../timer.cpp $(LOCAL_PATH)/../../../../timer_unix.cpp  $(LOCAL_PATH)/../../../../../adb.cpp  $(LOCAL_PATH)/../../../../../serial.cpp  $(LOCAL_PATH)/../../../../../ether.cpp  $(LOCAL_PATH)/../../../../../sony.cpp  $(LOCAL_PATH)/../../../../../disk.cpp  $(LOCAL_PATH)/../../../../../cdrom.cpp  $(LOCAL_PATH)/../../../../../scsi.cpp  $(LOCAL_PATH)/../../../../../video.cpp  $(LOCAL_PATH)/../../../../../audio.cpp $(LOCAL_PATH)/../../../../../extfs.cpp $(LOCAL_PATH)/../../../../extfs_unix.cpp $(LOCAL_PATH)/../../../../disk_sparsebundle.cpp $(LOCAL_PATH)/../../../../tinyxml2.cpp  $(LOCAL_PATH)/../../../../../user_strings.cpp $(LOCAL_PATH)/../../../../user_strings_unix.cpp $(LOCAL_PATH)/../../../../sshpty.c $(LOCAL_PATH)/../../../../strlcpy.c  $(LOCAL_PATH)/../../../../../dummy/prefs_dummy.cpp $(LOCAL_PATH)/../../../../../gfxaccel.cpp $(LOCAL_PATH)/../../../../prefs_unix.cpp $(LOCAL_PATH)/../../../../../name_registry.cpp $(LOCAL_PATH)/../../../../rpc_unix.cpp $(LOCAL_PATH)/../../../../../SDL/audio_sdl.cpp $(LOCAL_PATH)/../../../../../SDL/audio_sdl3.cpp $(LOCAL_PATH)/../../../../../SDL/video_sdl.cpp $(LOCAL_PATH)/../../../../../SDL/video_sdl2.cpp $(LOCAL_PATH)/../../../../../SDL/video_sdl3.cpp $(LOCAL_PATH)/../../../../Linux/scsi_linux.cpp $(LOCAL_PATH)/../../../../ether_unix.cpp $(LOCAL_PATH)/../../../../../dummy/clip_dummy.cpp $(LOCAL_PATH)/../../../../serial_unix.cpp $(LOCAL_PATH)/../../../../../dummy/prefs_editor_dummy.cpp

LOCAL_SHARED_LIBRARIES := SDL2 SDL2_image SDL2_ttf

LOCAL_LDLIBS := -lGLESv1_CM -lGLESv2 -lOpenSLES -llog -landroid -lguisan -lc++_static -lgmp -lmpfr

include $(BUILD_SHARED_LIBRARY)
