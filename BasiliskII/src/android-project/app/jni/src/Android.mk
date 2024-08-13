LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := main

SDL_PATH := ../SDL

LOCAL_C_INCLUDES := $(LOCAL_PATH)/$(SDL_PATH)/include

# Add your application source files here...
LOCAL_SRC_FILES := ../../../../slirp/bootp.c ../../../../slirp/ip_output.c  ../../../../slirp/tcp_input.c ../../../../slirp/cksum.c ../../../../slirp/mbuf.c  ../../../../slirp/tcp_output.c ../../../../slirp/debug.c ../../../../slirp/misc.c  ../../../../slirp/tcp_subr.c  ../../../../slirp/if.c   ../../../../slirp/sbuf.c  ../../../../slirp/tcp_timer.c ../../../../slirp/ip_icmp.c   ../../../../slirp/slirp.c ../../../../slirp/tftp.c ../../../../slirp/ip_input.c  ../../../../slirp/socket.c ../../../../slirp/udp.c ../../../../guichan/guichan-gui.cpp ../../../../guichan/menuLoad_guichan.cpp ../../../../guichan/menuTabDisplaySound.cpp ../../../../guichan/menuTabMisc.cpp ../../../../guichan/menuTabVolumes.cpp ../../../../guichan/menuTabNetwork.cpp ../../../../guichan/rw_config.cpp ../../../../src/Unix/main.cpp ../../../../src/Unix/prefs.cpp ../../../../src/Unix/prefs_items.cpp  ../../../../src/Unix/sys_unix.cpp  ../../../../src/Unix/rom_patches.cpp  ../../../../src/Unix/slot_rom.cpp  ../../../../src/Unix/rsrc_patches.cpp  ../../../../src/Unix/emul_op.cpp  ../../../../src/Unix/macos_util.cpp . ../../../../src/Unix/xpram.cpp  ../../../../src/Unix/xpram_unix.cpp  ../../../../src/Unix/timer.cpp  ../../../../src/Unix/timer_unix.cpp  ../../../../src/Unix/adb.cpp  ../../../../src/Unix/serial.cpp  ../../../../src/Unix/ether.cpp  ../../../../src/Unix/sony.cpp  ../../../../src/Unix/disk.cpp  ../../../../src/Unix/cdrom.cpp  ../../../../src/Unix/scsi.cpp  ../../../../src/Unix/video.cpp  ../../../../src/Unix/audio.cpp  ../../../../src/Unix/extfs.cpp  ../../../../src/Unix/disk_sparsebundle.cpp  ../../../../src/Unix/tinyxml2.cpp ../../../../src/Unix/user_strings.cpp  ../../../../src/Unix/user_strings_unix.cpp  ../../../../src/Unix/sshpty.c  ../../../../src/Unix/strlcpy.c  ../../../../src/Unix/rpc_unix.cpp

LOCAL_SHARED_LIBRARIES := SDL2

LOCAL_LDLIBS := -lGLESv1_CM -lGLESv2 -lOpenSLES -llog -landroid -lguichan_sdl2 -lguichan

include $(BUILD_SHARED_LIBRARY)
