# Microsoft Developer Studio Generated NMAKE File, Format Version 4.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Console Application" 0x0103

!IF "$(CFG)" == ""
CFG=diff_eq - Win32 Debug
!MESSAGE No configuration specified.  Defaulting to diff_eq - Win32 Debug.
!ENDIF 

!IF "$(CFG)" != "diff_eq - Win32 Release" && "$(CFG)" !=\
 "diff_eq - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE on this makefile
!MESSAGE by defining the macro CFG on the command line.  For example:
!MESSAGE 
!MESSAGE NMAKE /f "diff_eq.mak" CFG="diff_eq - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "diff_eq - Win32 Release" (based on "Win32 (x86) Console Application")
!MESSAGE "diff_eq - Win32 Debug" (based on "Win32 (x86) Console Application")
!MESSAGE 
!ERROR An invalid configuration is specified.
!ENDIF 

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE 
NULL=nul
!ENDIF 
################################################################################
# Begin Project
# PROP Target_Last_Scanned "diff_eq - Win32 Debug"
F90=fl32.exe
RSC=rc.exe

!IF  "$(CFG)" == "diff_eq - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Release"
# PROP BASE Intermediate_Dir "Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "Release"
# PROP Intermediate_Dir "Release"
# PROP Target_Dir ""
OUTDIR=.\Release
INTDIR=.\Release

ALL : "$(OUTDIR)\diff_eq.exe"

CLEAN : 
	-@erase ".\Release\diff_eq.exe"
	-@erase ".\Release\sub_Huen_df.obj"
	-@erase ".\Release\func_taylor.obj"
	-@erase ".\Release\sub_RK4_df.obj"
	-@erase ".\Release\sub_euler_df.obj"
	-@erase ".\Release\func01.obj"
	-@erase ".\Release\sub_taylor_df.obj"
	-@erase ".\Release\main_diff.obj"
	-@erase ".\Release\sub_modEuler_df.obj"
	-@erase ".\Release\sub_writeResult.obj"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

# ADD BASE F90 /Ox /I "Release/" /c /nologo
# ADD F90 /Ox /I "Release/" /c /nologo
F90_PROJ=/Ox /I "Release/" /c /nologo /Fo"Release/" 
F90_OBJS=.\Release/
# ADD BASE RSC /l 0x429 /d "NDEBUG"
# ADD RSC /l 0x429 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/diff_eq.bsc" 
BSC32_SBRS=
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib /nologo /subsystem:console /machine:I386
# ADD LINK32 kernel32.lib /nologo /subsystem:console /machine:I386
LINK32_FLAGS=kernel32.lib /nologo /subsystem:console /incremental:no\
 /pdb:"$(OUTDIR)/diff_eq.pdb" /machine:I386 /out:"$(OUTDIR)/diff_eq.exe" 
LINK32_OBJS= \
	"$(INTDIR)/sub_Huen_df.obj" \
	"$(INTDIR)/func_taylor.obj" \
	"$(INTDIR)/sub_RK4_df.obj" \
	"$(INTDIR)/sub_euler_df.obj" \
	"$(INTDIR)/func01.obj" \
	"$(INTDIR)/sub_taylor_df.obj" \
	"$(INTDIR)/main_diff.obj" \
	"$(INTDIR)/sub_modEuler_df.obj" \
	"$(INTDIR)/sub_writeResult.obj"

"$(OUTDIR)\diff_eq.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "diff_eq - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "Debug"
# PROP BASE Intermediate_Dir "Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "Debug"
# PROP Intermediate_Dir "Debug"
# PROP Target_Dir ""
OUTDIR=.\Debug
INTDIR=.\Debug

ALL : "$(OUTDIR)\diff_eq.exe"

CLEAN : 
	-@erase ".\Debug\diff_eq.exe"
	-@erase ".\Debug\sub_RK4_df.obj"
	-@erase ".\Debug\sub_Huen_df.obj"
	-@erase ".\Debug\func_taylor.obj"
	-@erase ".\Debug\main_diff.obj"
	-@erase ".\Debug\sub_modEuler_df.obj"
	-@erase ".\Debug\sub_euler_df.obj"
	-@erase ".\Debug\sub_taylor_df.obj"
	-@erase ".\Debug\func01.obj"
	-@erase ".\Debug\sub_writeResult.obj"
	-@erase ".\Debug\diff_eq.ilk"
	-@erase ".\Debug\diff_eq.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

# ADD BASE F90 /Zi /I "Debug/" /c /nologo
# ADD F90 /Zi /I "Debug/" /c /nologo
F90_PROJ=/Zi /I "Debug/" /c /nologo /Fo"Debug/" /Fd"Debug/diff_eq.pdb" 
F90_OBJS=.\Debug/
# ADD BASE RSC /l 0x429 /d "_DEBUG"
# ADD RSC /l 0x429 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/diff_eq.bsc" 
BSC32_SBRS=
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib /nologo /subsystem:console /debug /machine:I386
# ADD LINK32 kernel32.lib /nologo /subsystem:console /debug /machine:I386
LINK32_FLAGS=kernel32.lib /nologo /subsystem:console /incremental:yes\
 /pdb:"$(OUTDIR)/diff_eq.pdb" /debug /machine:I386 /out:"$(OUTDIR)/diff_eq.exe" 
LINK32_OBJS= \
	"$(INTDIR)/sub_RK4_df.obj" \
	"$(INTDIR)/sub_Huen_df.obj" \
	"$(INTDIR)/func_taylor.obj" \
	"$(INTDIR)/main_diff.obj" \
	"$(INTDIR)/sub_modEuler_df.obj" \
	"$(INTDIR)/sub_euler_df.obj" \
	"$(INTDIR)/sub_taylor_df.obj" \
	"$(INTDIR)/func01.obj" \
	"$(INTDIR)/sub_writeResult.obj"

"$(OUTDIR)\diff_eq.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ENDIF 

.for{$(F90_OBJS)}.obj:
   $(F90) $(F90_PROJ) $<  

.f{$(F90_OBJS)}.obj:
   $(F90) $(F90_PROJ) $<  

.f90{$(F90_OBJS)}.obj:
   $(F90) $(F90_PROJ) $<  

################################################################################
# Begin Target

# Name "diff_eq - Win32 Release"
# Name "diff_eq - Win32 Debug"

!IF  "$(CFG)" == "diff_eq - Win32 Release"

!ELSEIF  "$(CFG)" == "diff_eq - Win32 Debug"

!ENDIF 

################################################################################
# Begin Source File

SOURCE=.\main_diff.f90

"$(INTDIR)\main_diff.obj" : $(SOURCE) "$(INTDIR)"


# End Source File
################################################################################
# Begin Source File

SOURCE=.\func01.f90

"$(INTDIR)\func01.obj" : $(SOURCE) "$(INTDIR)"


# End Source File
################################################################################
# Begin Source File

SOURCE=.\sub_euler_df.f90

"$(INTDIR)\sub_euler_df.obj" : $(SOURCE) "$(INTDIR)"


# End Source File
################################################################################
# Begin Source File

SOURCE=.\sub_Huen_df.f90

"$(INTDIR)\sub_Huen_df.obj" : $(SOURCE) "$(INTDIR)"


# End Source File
################################################################################
# Begin Source File

SOURCE=.\sub_modEuler_df.f90

"$(INTDIR)\sub_modEuler_df.obj" : $(SOURCE) "$(INTDIR)"


# End Source File
################################################################################
# Begin Source File

SOURCE=.\sub_RK4_df.f90

"$(INTDIR)\sub_RK4_df.obj" : $(SOURCE) "$(INTDIR)"


# End Source File
################################################################################
# Begin Source File

SOURCE=.\sub_taylor_df.f90

"$(INTDIR)\sub_taylor_df.obj" : $(SOURCE) "$(INTDIR)"


# End Source File
################################################################################
# Begin Source File

SOURCE=.\func_taylor.f90

"$(INTDIR)\func_taylor.obj" : $(SOURCE) "$(INTDIR)"


# End Source File
################################################################################
# Begin Source File

SOURCE=.\sub_writeResult.f90

"$(INTDIR)\sub_writeResult.obj" : $(SOURCE) "$(INTDIR)"


# End Source File
# End Target
# End Project
################################################################################
