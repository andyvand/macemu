/*
 *  Basilisk II (C) pelya
 *  Basilisk II (C) 2017 Google
 *
 *  This program is free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation; either version 2 of the License, or
 *  (at your option) any later version.
 *
 *  This program is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with this program; if not, write to the Free Software
 *  Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

#include <iostream>
#include <fstream>
#include <string>
#include <cstring>
//#include "conio.h"

using namespace std;
namespace widgets
{
	std::string menuFileDisk[4];
	string menu_extfs;
	string menu_seriala;
	string menu_serialb;
	string menu_udptunnel;
	string menu_udpport;
	string menu_ether;
    string menu_bootdrive;
	string menu_bootdriver;
	string menu_ramsize;
	string menu_frameskip;
#if 0
	string menu_modelid;
	string menu_cpu;
	string menu_fpu;
#endif
	string menu_nocdrom;
	string menu_nosound;
	string menu_noclipconversion;
	string menu_nogui;
	string menu_jit;
	string menu_jit68k;
	string menu_jitfpu;
	string menu_jitdebug;
	string menu_jitcachesize;
	string menu_jitlazyflush;
	string menu_jitinline;
	string menu_keyboardtype;
	string menu_keycodes;
	string menu_mousewheelmode;
	string menu_mousewheellines;
	string menu_dsp;
	string menu_mixer;
	string menu_idlewait;
	string menu_ignoresegv;
	string menu_rom;
	string menu_screen;
	const char *homeDir = getenv("HOME");
	char prefsName[2048];

void defConfig()
{
#ifdef ANDROIDSDL
	snprintf(prefsName, sizeof(prefsName), "/sdcard/Android/macemu_data/.sheepshaver_prefs");
#else
	if (homeDir != NULL)
	{
		snprintf(prefsName, sizeof(prefsName), "%s/%s", homeDir, ".sheepshaver_prefs");
	} else {
		snprintf(prefsName, sizeof(prefsName), ".sheepshaver_prefs");
	}
#endif

	for (int i=0; i<4; i++)
		menuFileDisk[i]="";
	menu_extfs="/";
	menu_seriala="/dev/ttyS0";
	menu_serialb="/dev/ttyS1";
	menu_udptunnel="false";
	menu_udpport="6066";
	menu_bootdrive="0";
	menu_bootdriver="0";
	menu_ramsize="8388608";
	menu_frameskip="6";
#if 0
	menu_modelid="5";
	menu_cpu="3";
	menu_fpu="false";
#endif
	menu_nocdrom="false";
	menu_nosound="false";
	menu_noclipconversion="false";
	menu_nogui="false";
	menu_jit="false";
	menu_jit68k="false";
	menu_jitfpu="false";
	menu_jitdebug="false";
	menu_jitcachesize="0";
	menu_jitlazyflush="false";
	menu_jitinline="false";
	menu_keyboardtype="5";
	menu_keycodes="false";
	menu_mousewheelmode="1";
	menu_mousewheellines="3";
	menu_dsp="/dev/dsp";
	menu_mixer="/dev/mixer";
	menu_idlewait="true";
	menu_ignoresegv="true";
	menu_rom="Mac_OS.ROM";
	menu_screen="win/640/480";
	menu_ether = "";
}
	
void readConfig()
{
	char readed_string[99];
	char current_string[99];
	char char1,char2,char3,char4;
	string prev_string;
	int lenght;
	int disk_n;
	disk_n=0;
	defConfig();
	ifstream myfile;
	myfile.open(prefsName);
	if (!(myfile.is_open()))
		{
			cout << "Unable to open file.";
			return;
		}
	while (!myfile.eof())
	{
		myfile>>readed_string;
		strcpy(current_string,readed_string);
		if (prev_string==string("disk") && disk_n < 4)
		{
			menuFileDisk[disk_n]=current_string;
			disk_n++;
		}
		if (prev_string==string("extfs"))
			menu_extfs=current_string;
		if (prev_string==string("seriala"))
			menu_seriala=current_string;
		if (prev_string==string("serialb"))
			menu_serialb=current_string;
		if (prev_string==string("udptunnel"))
			menu_udptunnel=current_string;
		if (prev_string==string("udpport"))
			menu_udpport=current_string;
		if (prev_string==string("bootdrive"))
			menu_bootdrive=current_string;
		if (prev_string==string("bootdriver"))
			menu_bootdriver=current_string;
		if (prev_string==string("ramsize"))
			menu_ramsize=current_string;
		if (prev_string==string("frameskip"))
			menu_frameskip=current_string;
#if 0
		if (prev_string==string("modelid"))
			menu_modelid=current_string;
		if (prev_string==string("cpu"))
			menu_cpu=current_string;
		if (prev_string==string("fpu"))
			menu_fpu=current_string;
#endif
		if (prev_string==string("nocdrom"))
			menu_nocdrom=current_string;
		if (prev_string==string("nosound"))
			menu_nosound=current_string;
		if (prev_string==string("noclipconversion"))
			menu_noclipconversion=current_string;
		if (prev_string==string("nogui"))
			menu_nogui=current_string;
		if (prev_string==string("jit"))
			menu_jit=current_string;
		if (prev_string==string("jit68k"))
			menu_jit68k=current_string;
		if (prev_string==string("jitfpu"))
			menu_jitfpu=current_string;
		if (prev_string==string("jitdebug"))
			menu_jitdebug=current_string;
		if (prev_string==string("jitcachesize"))
			menu_jitcachesize=current_string;
		if (prev_string==string("jitlazyflush"))
			menu_jitlazyflush=current_string;
		if (prev_string==string("jitinline"))
			menu_jitinline=current_string;
		if (prev_string==string("keyboardtype"))
			menu_keyboardtype=current_string;
		if (prev_string==string("mousewheelmode"))
			menu_mousewheelmode=current_string;
		if (prev_string==string("mousewheellines"))
			menu_mousewheellines=current_string;
		if (prev_string==string("dsp"))
			menu_dsp=current_string;
		if (prev_string==string("mixer"))
			menu_mixer=current_string;
		if (prev_string==string("ignoresegv"))
			menu_ignoresegv=current_string;
		if (prev_string==string("idlewait"))
			menu_idlewait=current_string;
		if (prev_string==string("rom"))
			menu_rom=current_string;			
		if (prev_string==string("screen"))
			menu_screen=current_string;
		if (prev_string==string("ether"))
			menu_ether=current_string;
		prev_string=readed_string;
	}
	myfile.close();
}

void writeConfig()
{
	char saved_string[2048];
	ofstream myfile;
	myfile.open(prefsName);
	strncpy(saved_string,"", 2048);
	for (int i=0; i<4; i++)
	{
		if (menuFileDisk[i]!="")
		{
			strncat(saved_string,"disk ", 2048);
			strncat(saved_string,menuFileDisk[i].c_str(), 2048);
			strncat(saved_string,"\n", 2048);
		}
	}
	strncat(saved_string,"extfs ", 2048);
	strncat(saved_string,menu_extfs.c_str(), 2048);
	strncat(saved_string,"\n", 2048);
	strncat(saved_string,"seriala ", 2048);
	strncat(saved_string,menu_seriala.c_str(), 2048);
	strncat(saved_string,"\n", 2048);
	strncat(saved_string,"serialb ", 2048);
	strncat(saved_string,menu_serialb.c_str(), 2048);
	strncat(saved_string,"\n", 2048);
	if (menu_ether != "")
	{
		strncat(saved_string,"ether ", 2048);
		strncat(saved_string,menu_ether.c_str(), 2048);
		strncat(saved_string,"\n", 2048);
	}
	strncat(saved_string,"udptunnel ", 2048);
	strncat(saved_string,menu_udptunnel.c_str(), 2048);
	strncat(saved_string,"\n", 2048);
	strncat(saved_string,"udpport ", 2048);
	strncat(saved_string,menu_udpport.c_str(), 2048);
	strncat(saved_string,"\n", 2048);
	strncat(saved_string,"bootdrive ", 2048);
	strncat(saved_string,menu_bootdrive.c_str(), 2048);
	strncat(saved_string,"\n", 2048);
	strncat(saved_string,"bootdriver ", 2048);
	strncat(saved_string,menu_bootdriver.c_str(), 2048);
	strncat(saved_string,"\n", 2048);
	strncat(saved_string,"ramsize ", 2048);
	strncat(saved_string,menu_ramsize.c_str(), 2048);
	strncat(saved_string,"\n", 2048);
	strncat(saved_string,"frameskip ", 2048);
	strncat(saved_string,menu_frameskip.c_str(), 2048);
	strncat(saved_string,"\n", 2048);
#if 0
	strncat(saved_string,"modelid ", 2048);
	strncat(saved_string,menu_modelid.c_str(), 2048);
	strncat(saved_string,"\n", 2048);
	strncat(saved_string,"cpu ", 2048);
	strncat(saved_string,menu_cpu.c_str(), 2048);
	strncat(saved_string,"\n", 2048);
	strncat(saved_string,"fpu ", 2048);
	strncat(saved_string,menu_fpu.c_str(), 2048);
	strncat(saved_string,"\n", 2048);
#endif
	strncat(saved_string,"nocdrom ", 2048);
	strncat(saved_string,menu_nocdrom.c_str(), 2048);
	strncat(saved_string,"\n", 2048);
	strncat(saved_string,"nosound ", 2048);
	strncat(saved_string,menu_nosound.c_str(), 2048);
	strncat(saved_string,"\n", 2048);
	strncat(saved_string,"noclipconversion ", 2048);
	strncat(saved_string,menu_noclipconversion.c_str(), 2048);
	strncat(saved_string,"\n", 2048);
	strncat(saved_string,"nogui ", 2048);
	strncat(saved_string,menu_nogui.c_str(), 2048);
	strncat(saved_string,"\n", 2048);
	strncat(saved_string,"jit ", 2048);
	strncat(saved_string,menu_jit.c_str(), 2048);
	strncat(saved_string,"\n", 2048);
	strncat(saved_string,"jit68k ", 2048);
	strncat(saved_string,menu_jit68k.c_str(), 2048);
	strncat(saved_string,"\n", 2048);
	strncat(saved_string,"jitfpu ", 2048);
	strncat(saved_string,menu_jitfpu.c_str(), 2048);
	strncat(saved_string,"\n", 2048);
	strncat(saved_string,"jitdebug ", 2048);
	strncat(saved_string,menu_jitdebug.c_str(), 2048);
	strncat(saved_string,"\n", 2048);
	strncat(saved_string,"jitcachesize ", 2048);
	strncat(saved_string,menu_jitcachesize.c_str(), 2048);
	strncat(saved_string,"\n", 2048);
	strncat(saved_string,"jitlazyflush ", 2048);
	strncat(saved_string,menu_jitlazyflush.c_str(), 2048);
	strncat(saved_string,"\n", 2048);
	strncat(saved_string,"jitinline ", 2048);
	strncat(saved_string,menu_jitinline.c_str(), 2048);
	strncat(saved_string,"\n", 2048);
	strncat(saved_string,"keyboardtype ", 2048);
	strncat(saved_string,menu_keyboardtype.c_str(), 2048);
	strncat(saved_string,"\n", 2048);
	strncat(saved_string,"keycodes ", 2048);
	strncat(saved_string,menu_keycodes.c_str(), 2048);
	strncat(saved_string,"\n", 2048);
	strncat(saved_string,"mousewheelmode ", 2048);
	strncat(saved_string,menu_mousewheelmode.c_str(), 2048);
	strncat(saved_string,"\n", 2048);
	strncat(saved_string,"mousewheellines ", 2048);
	strncat(saved_string,menu_mousewheellines.c_str(), 2048);
	strncat(saved_string,"\n", 2048);
	strncat(saved_string,"dsp ", 2048);
	strncat(saved_string,menu_dsp.c_str(), 2048);
	strncat(saved_string,"\n", 2048);
	strncat(saved_string,"mixer ", 2048);
	strncat(saved_string,menu_mixer.c_str(), 2048);
	strncat(saved_string,"\n", 2048);
	strncat(saved_string,"ignoresegv ", 2048);
	strncat(saved_string,menu_ignoresegv.c_str(), 2048);
	strncat(saved_string,"\n", 2048);
	strncat(saved_string,"idlewait ", 2048);
	strncat(saved_string,menu_idlewait.c_str(), 2048);
	strncat(saved_string,"\n", 2048);
	strncat(saved_string,"rom ", 2048);
	strncat(saved_string,menu_rom.c_str(), 2048);
	strncat(saved_string,"\n", 2048);
	strncat(saved_string,"screen ", 2048);
	strncat(saved_string,menu_screen.c_str(), 2048);
	strncat(saved_string,"\n", 2048);
	myfile<<saved_string;
	myfile.close();
}
}
