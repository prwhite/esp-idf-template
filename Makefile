#
# This is a project Makefile. It is assumed the directory this Makefile resides in is a
# project subdirectory.
#

PROJECT_NAME := app-template

include $(IDF_PATH)/make/project.mk


fixeclipsename: 
ifndef newname
	$(error "Please supply new project name with command line argument newname=something") 
else
	sed -i .orig 's/esp-idf-template/$(newname)/g' .cproject
	sed -i .orig 's/esp-idf-template/$(newname)/g' .project
	@echo "Changed project name to $(newname)"
endif

.PHONY: fixeclipsename
