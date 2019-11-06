SHELL			:= /bin/bash
ARDUINO_DIR 	:= $(HOME)/Documents/ArduinoIDE
ARDUINO_SKETCHBOOK	:= $(HOME)/Documents/Arduino
#ARDUINO_PORT 	:= /dev/ttyUSB0
ARDUINO_PORT 	:= $(shell ls /dev/ttyUSB* | head -n 1)
MONITOR_PORT	:= $(ARDUINO_PORT)
#Board info: https://github.com/sudar/Arduino-Makefile/blob/master/examples/Blink/Makefile
ARCHITECTURE	:= avr
BOARD_TAG 		:= nano
BOARD_SUB		:= atmega328

include /usr/share/arduino/Arduino.mk

ifneq ($(wildcard *.ino).ino,)
ARDUINO_INO_FILE = $(wildcard *.ino)
else
ARDUINO_INO_FILE = test.ino
endif
SRC = $(ARDUINO_INO_FILE)

gui: openGUI
openGUI:
	$(ARDUINO_DIR)/arduino $(SRC)

COMM_PREF		:= sm.conf
comm:
	sed -i 's,device='.*',device='"$(ARDUINO_PORT)"',g' $(COMM_PREF)
	moserial --profile=$(COMM_PREF)

clear:
	rm -r build-$(BOARD_TAG)-$(BOARD_SUB)
