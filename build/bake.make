# GNU Make project makefile autogenerated by Premake
ifndef config
  config=debug
endif

ifndef verbose
  SILENT = @
endif

ifndef CC
  CC = gcc
endif

ifndef CXX
  CXX = g++
endif

ifndef AR
  AR = ar
endif

ifeq ($(config),debug)
  OBJDIR     = ../obj/linux-32/Debug
  TARGETDIR  = ..
  TARGET     = $(TARGETDIR)/bake
  DEFINES   += -DDEBUG
  INCLUDES  += -I.. -I../../base
  CPPFLAGS  += -MMD -MP $(DEFINES) $(INCLUDES)
  CFLAGS    += $(CPPFLAGS) $(ARCH) -g -std=c99 -fPIC -D_XOPEN_SOURCE=600
  CXXFLAGS  += $(CFLAGS) 
  LDFLAGS   += 
  LIBS      += -lrt -ldl -lm -lffi -lpthread
  RESFLAGS  += $(DEFINES) $(INCLUDES) 
  LDDEPS    += 
  LINKCMD    = $(CC) -o $(TARGET) $(OBJECTS) $(LDFLAGS) $(RESOURCES) $(ARCH) $(LIBS)
  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

ifeq ($(config),release)
  OBJDIR     = ../obj/linux-32/Release
  TARGETDIR  = ..
  TARGET     = $(TARGETDIR)/bake
  DEFINES   += -DNDEBUG
  INCLUDES  += -I.. -I../../base
  CPPFLAGS  += -MMD -MP $(DEFINES) $(INCLUDES)
  CFLAGS    += $(CPPFLAGS) $(ARCH) -O2 -std=c99 -fPIC -D_XOPEN_SOURCE=600
  CXXFLAGS  += $(CFLAGS) 
  LDFLAGS   += -s
  LIBS      += -lrt -ldl -lm -lffi -lpthread
  RESFLAGS  += $(DEFINES) $(INCLUDES) 
  LDDEPS    += 
  LINKCMD    = $(CC) -o $(TARGET) $(OBJECTS) $(LDFLAGS) $(RESOURCES) $(ARCH) $(LIBS)
  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

OBJECTS := \
	$(OBJDIR)/bake.o \
	$(OBJDIR)/crawler.o \
	$(OBJDIR)/project.o \
	$(OBJDIR)/base.o \
	$(OBJDIR)/buffer.o \
	$(OBJDIR)/dl.o \
	$(OBJDIR)/env.o \
	$(OBJDIR)/file.o \
	$(OBJDIR)/fs.o \
	$(OBJDIR)/idmatch.o \
	$(OBJDIR)/iter.o \
	$(OBJDIR)/jsw_rbtree.o \
	$(OBJDIR)/ll.o \
	$(OBJDIR)/log.o \
	$(OBJDIR)/os.o \
	$(OBJDIR)/path.o \
	$(OBJDIR)/proc.o \
	$(OBJDIR)/string.o \
	$(OBJDIR)/thread.o \
	$(OBJDIR)/time.o \
	$(OBJDIR)/util.o \

RESOURCES := \

SHELLTYPE := msdos
ifeq (,$(ComSpec)$(COMSPEC))
  SHELLTYPE := posix
endif
ifeq (/bin,$(findstring /bin,$(SHELL)))
  SHELLTYPE := posix
endif

.PHONY: clean prebuild prelink

all: $(TARGETDIR) $(OBJDIR) prebuild prelink $(TARGET)
	@:

$(TARGET): $(GCH) $(OBJECTS) $(LDDEPS) $(RESOURCES)
	@echo Linking bake
	$(SILENT) $(LINKCMD)
	$(POSTBUILDCMDS)

$(TARGETDIR):
	@echo Creating $(TARGETDIR)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) mkdir -p $(TARGETDIR)
else
	$(SILENT) mkdir $(subst /,\\,$(TARGETDIR))
endif

$(OBJDIR):
	@echo Creating $(OBJDIR)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) mkdir -p $(OBJDIR)
else
	$(SILENT) mkdir $(subst /,\\,$(OBJDIR))
endif

clean:
	@echo Cleaning bake
ifeq (posix,$(SHELLTYPE))
	$(SILENT) rm -f  $(TARGET)
	$(SILENT) rm -rf $(OBJDIR)
else
	$(SILENT) if exist $(subst /,\\,$(TARGET)) del $(subst /,\\,$(TARGET))
	$(SILENT) if exist $(subst /,\\,$(OBJDIR)) rmdir /s /q $(subst /,\\,$(OBJDIR))
endif

prebuild:
	$(PREBUILDCMDS)

prelink:
	$(PRELINKCMDS)

ifneq (,$(PCH))
$(GCH): $(PCH)
	@echo $(notdir $<)
	-$(SILENT) cp $< $(OBJDIR)
	$(SILENT) $(CC) $(CFLAGS) -o "$@" -c "$<"
endif

$(OBJDIR)/bake.o: ../src/bake.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(CFLAGS) -o "$@" -c "$<"
$(OBJDIR)/crawler.o: ../src/crawler.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(CFLAGS) -o "$@" -c "$<"
$(OBJDIR)/project.o: ../src/project.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(CFLAGS) -o "$@" -c "$<"
$(OBJDIR)/base.o: ../../base/src/base.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(CFLAGS) -o "$@" -c "$<"
$(OBJDIR)/buffer.o: ../../base/src/buffer.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(CFLAGS) -o "$@" -c "$<"
$(OBJDIR)/dl.o: ../../base/src/dl.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(CFLAGS) -o "$@" -c "$<"
$(OBJDIR)/env.o: ../../base/src/env.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(CFLAGS) -o "$@" -c "$<"
$(OBJDIR)/file.o: ../../base/src/file.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(CFLAGS) -o "$@" -c "$<"
$(OBJDIR)/fs.o: ../../base/src/fs.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(CFLAGS) -o "$@" -c "$<"
$(OBJDIR)/idmatch.o: ../../base/src/idmatch.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(CFLAGS) -o "$@" -c "$<"
$(OBJDIR)/iter.o: ../../base/src/iter.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(CFLAGS) -o "$@" -c "$<"
$(OBJDIR)/jsw_rbtree.o: ../../base/src/jsw_rbtree.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(CFLAGS) -o "$@" -c "$<"
$(OBJDIR)/ll.o: ../../base/src/ll.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(CFLAGS) -o "$@" -c "$<"
$(OBJDIR)/log.o: ../../base/src/log.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(CFLAGS) -o "$@" -c "$<"
$(OBJDIR)/os.o: ../../base/src/os.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(CFLAGS) -o "$@" -c "$<"
$(OBJDIR)/path.o: ../../base/src/path.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(CFLAGS) -o "$@" -c "$<"
$(OBJDIR)/proc.o: ../../base/src/proc.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(CFLAGS) -o "$@" -c "$<"
$(OBJDIR)/string.o: ../../base/src/string.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(CFLAGS) -o "$@" -c "$<"
$(OBJDIR)/thread.o: ../../base/src/thread.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(CFLAGS) -o "$@" -c "$<"
$(OBJDIR)/time.o: ../../base/src/time.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(CFLAGS) -o "$@" -c "$<"
$(OBJDIR)/util.o: ../../base/src/util.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(CFLAGS) -o "$@" -c "$<"

-include $(OBJECTS:%.o=%.d)