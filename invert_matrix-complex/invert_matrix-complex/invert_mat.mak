# Microsoft Developer Studio Generated NMAKE File, Format Version 4.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Console Application" 0x0103

!IF "$(CFG)" == ""
CFG=invert_mat - Win32 Debug
!MESSAGE No configuration specified.  Defaulting to invert_mat - Win32 Debug.
!ENDIF 

!IF "$(CFG)" != "invert_mat - Win32 Release" && "$(CFG)" !=\
 "invert_mat - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE on this makefile
!MESSAGE by defining the macro CFG on the command line.  For example:
!MESSAGE 
!MESSAGE NMAKE /f "invert_mat.mak" CFG="invert_mat - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "invert_mat - Win32 Release" (based on\
 "Win32 (x86) Console Application")
!MESSAGE "invert_mat - Win32 Debug" (based on\
 "Win32 (x86) Console Application")
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
RSC=rc.exe
F90=fl32.exe

!IF  "$(CFG)" == "invert_mat - Win32 Release"

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

ALL : "$(OUTDIR)\invert_mat.exe"

CLEAN : 
	-@erase ".\Release\invert_mat.exe"
	-@erase ".\Release\main_inv.obj"
	-@erase ".\Release\sub_invertmat.obj"

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
BSC32_FLAGS=/nologo /o"$(OUTDIR)/invert_mat.bsc" 
BSC32_SBRS=
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib /nologo /subsystem:console /machine:I386
# ADD LINK32 kernel32.lib /nologo /subsystem:console /machine:I386
LINK32_FLAGS=kernel32.lib /nologo /subsystem:console /incremental:no\
 /pdb:"$(OUTDIR)/invert_mat.pdb" /machine:I386 /out:"$(OUTDIR)/invert_mat.exe" 
LINK32_OBJS= \
	"$(INTDIR)/main_inv.obj" \
	"$(INTDIR)/sub_invertmat.obj"

"$(OUTDIR)\invert_mat.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "invert_mat - Win32 Debug"

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

ALL : "$(OUTDIR)\invert_mat.exe"

CLEAN : 
	-@erase ".\Debug\invert_mat.exe"
	-@erase ".\Debug\main_inv.obj"
	-@erase ".\Debug\sub_invertmat.obj"
	-@erase ".\Debug\invert_mat.ilk"
	-@erase ".\Debug\invert_mat.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

# ADD BASE F90 /Zi /I "Debug/" /c /nologo
# ADD F90 /Zi /I "Debug/" /c /nologo
F90_PROJ=/Zi /I "Debug/" /c /nologo /Fo"Debug/" /Fd"Debug/invert_mat.pdb" 
F90_OBJS=.\Debug/
# ADD BASE RSC /l 0x429 /d "_DEBUG"
# ADD RSC /l 0x429 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/invert_mat.bsc" 
BSC32_SBRS=
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib /nologo /subsystem:console /debug /machine:I386
# ADD LINK32 kernel32.lib /nologo /subsystem:console /debug /machine:I386
LINK32_FLAGS=kernel32.lib /nologo /subsystem:console /incremental:yes\
 /pdb:"$(OUTDIR)/invert_mat.pdb" /debug /machine:I386\
 /out:"$(OUTDIR)/invert_mat.exe" 
LINK32_OBJS= \
	"$(INTDIR)/main_inv.obj" \
	"$(INTDIR)/sub_invertmat.obj"

"$(OUTDIR)\invert_mat.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
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

# Name "invert_mat - Win32 Release"
# Name "invert_mat - Win32 Debug"

!IF  "$(CFG)" == "invert_mat - Win32 Release"

!ELSEIF  "$(CFG)" == "invert_mat - Win32 Debug"

!ENDIF 

################################################################################
# Begin Source File

SOURCE=.\main_inv.f90

"$(INTDIR)\main_inv.obj" : $(SOURCE) "$(INTDIR)"


# End Source File
################################################################################
# Begin Source File

SOURCE=.\sub_invertmat.f90

"$(INTDIR)\sub_invertmat.obj" : $(SOURCE) "$(INTDIR)"


# End Source File
# End Target
# End Project
################################################################################
