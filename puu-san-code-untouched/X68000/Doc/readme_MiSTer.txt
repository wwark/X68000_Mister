FPGA��X68k�݊��@readme:
�{RTL��DE10-nano(TERASIC��)��œ��삷��MiSTer�ɂ�
X68000�����̋@�\���������镨�ł��B

FPGA version X68k compatible machine readme:
This RTL is a MiSTer running on DE10-nano (TERASIC)
It is a thing that has a function equivalent to X68000.

�{RTL�Ɋւ��ẮA�t���[�\�t�g�E�F�A�ł��B
�EMC68000 MPU��IP : TG68��Tobias Gubener����ɒ��쌠������܂��B

This RTL is free software.
�EMC68000 MPU IP: TG68 is copyrighted by Tobias Gubener.


���̑���RTL�Ɋւ��Ă͎��A�v�[�ɂ���܂��B
����RTL�Ɋ܂܂��t�@�C���Ɋւ��Ă͈�ؖ��ۏ؂ł��B2���I��Q���܂ވ�؂̐ӔC��
�����܂���B

For other RTL, I'm at Puu.
There is no warranty for the files included in this RTL. No liability for secondary damage
I will not bear it.

����ُ퓙�Ɋւ��ẮA�u���O
http://fpga8801.seesaa.net/
���̃��b�Z�[�W��R�����g�ɂĘA�������肢�������܂��B

About abnormal operation etc., blog
http://fpga8801.seesaa.net/
Please contact us with the message or comment inside.


�g�p���@:
�{RTL��Altera�Ђ̊J���� QuartusII web edition�ɂĎ�ɊJ������Ă���A
�{�z�z��QuartusII��archive�@�\�ɂăp�b�P�[�W������Ă���܂��B
�{RTL��Project��Restore archived project�ɂēW�J���s��
(���̃t�@�C�����J���Ă��鎞�_�Ŋ������Ă���Ǝv���܂���)
Start Compilation�ɂăR���p�C�����s���Ă��������B
.rbf�t�@�C����.sof�t�@�C������������܂��B.sof�t�@�C����JTAG���[�h�ɂď������݂Ŏg�p���܂��B
.rbf�t�@�C����MiSTer�ɏ�������悤�Ƀt�@�C�������uX68000_YYYYMMDD.rbf�v�ɏC�����AMiSTer��SD�J�[�h���[�g�f�B���N�g����
�R�s�[���Ă��������B(YYYYMMDD�͖{���̓��t)
BIOS�C���[�W��SD�J�[�h���烍�[�h���܂��B
CGROM��IPLROM���A���̏��ԂŃ}�[�W�������̂�/X68000/boot.rom�Ƃ���MiSTer�pSD�J�[�h�ɕۑ����Ă��������B

how to use:
This RTL is mainly developed in the QuartusII web edition development environment of Altera,
and this distribution is also packaged with the archive function of QuartusII.
Extract this RTL by Project �� Restore archived project (I think it is completed when this file is open)
and compile by Start Compilation.
A .rbf file and a .sof file are generated. The .sof file is used for writing in JTAG mode.
Correct the filename of the .rbf file to "X68000_YYYYMMDD.rbf" so that it conforms to MiSTer,
and copy it to the SD card root directory of MiSTer. (YYYYMMDD is today's date)
The BIOS image loads from the SD card.
Please save the merged CGROM and IPLROM in this order as /X68000/boot.rom to the SD card for MiSTer.

CGROM�͎��@�̂��̂͌��J����Ă���܂���B�܂��AEX68��Windows�̃t�H���g����
�ϊ��������̂����C�Z���X��A���J�ł��܂���̂ŁA�A�[�J�C�u�Ɋ܂܂�Ă�����̂�
Linux(X11)���Wine��EX68�𓮍삳���A�������������̂𓯍����Ă��܂��B

The actual CGROM is not available. Also, with EX68 from Windows fonts
The converted version cannot be published due to the license, so what is included in the archive is
We have created a package that was created by running EX68 on Wine on Linux (X11).

F12��MiSTer�̃��j���[(OSD)�ɐ؂�ւ��A�f�B�X�N�G�~�����[�^���̐ݒ肪�\�ł��B
�f�B�X�N�C���[�W��MiSTerSD�J�[�h��X68000�f�B���N�g���ɕۑ����Ă��������B
HDD��SASI�ł��̂�40MB�܂ł̃C���[�W�ɑΉ��A�g���q��.HDF�ł��BFDD��D88�t�H�[�}�b�g�ł��B
Virtual Floppy Image Converter��p����XDF��D88�ϊ����A����ɓ��삷�邱�Ƃ��m�F���܂����B
SRAM�̓��e�̓t�@�C������̓ǂݍ��݁E�ۑ����\�ł��B�g���q��.RAM�ł��B
�����ł̓ǂݍ��݁E�ۑ��͍s���܂���̂�MiSTer���j���[����A�t�@�C������SRAM�ւ̃R�s�[�́uLOAD SRAM�v���A
SRAM����t�@�C���ւ̃R�s�[�́uSTORE SRAM�v��I�����Ă��������B

You can switch to the MiSTer menu (OSD) with F12 and set the disk emulator etc.
Save the disk image to the X68000 directory on the MiSTer SD card.
The HDD is SASI, so it supports images up to 40MB and the extension is .HDF. FDD is D88 format.
I converted XDF to D88 using Virtual Floppy Image Converter and confirmed that it works properly.
The contents of SRAM can be read and saved from a file. The extension is .RAM.
Since it is not automatically loaded/saved, from the MiSTer menu, copy "LOAD SRAM" from the file to SRAM.
Select "STORE SRAM" to copy from SRAM to a file.

FDD�ւ̓Ǐ�����SDRAM����čs���܂��BFDD�ւ̏������݂͈�xSDRAM�ɏ������܂ꂽ��A��莞��(3�b��)���
�����Ńt�@�C���ɏ����߂����ݒ�ɂȂ��Ă��܂��B�܂��ASYNC,EJECT��I���������ɂ������߂����s���܂���
�t�@�C���I����ʂ�[BS]�������ă}�E���g���������ꍇ�͏����߂����o���܂���̂Œ��ӂ��Ă��������B

Reading and writing to FDD is done via SDRAM. The writing to FDD is set to be automatically written back 
to the file after being written to SDRAM once and after a fixed time (3 seconds). Also, if you select SYNC or 
EJECT, the data will be written back, but if you unmount the file by pressing [BS] on the file selection screen,
you cannot write it back.
