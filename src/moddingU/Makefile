MODDING_FILES:=\
# Insert path to new file output .o's like so, replacing Example with the name of your file:
#	$(BUILD_DIR)/src/moddingU/Example.o\

DEPENDS += $(MODDING_FILES:.o=.d)

$(BUILD_DIR)/src/moddingU/moddingU.a: $(MODDING_FILES)
	@echo Linking... $@
	$(QUIET) mkdir -p $(dir $@)
	@echo $(MODDING_FILES) > build/MODDING_ofiles
	$(QUIET) $(LD) -library $(LIBRARY_LDFLAGS) -o $@ -lcf ldscript.lcf @build/MODDING_ofiles
