MODDING_FILES:=\
	$(BUILD_DIR)/src/moddingU/cameraHook.o\
	$(BUILD_DIR)/src/moddingU/disaster.o\

DEPENDS += $(MODDING_FILES:.o=.d)

$(BUILD_DIR)/src/moddingU/moddingU.a: $(MODDING_FILES)
	@echo Linking... $@
	$(QUIET) mkdir -p $(dir $@)
	@echo $(MODDING_FILES) > build/MODDING_ofiles
	$(QUIET) $(LD) -library $(LIBRARY_LDFLAGS) -o $@ -lcf ldscript.lcf @build/MODDING_ofiles
