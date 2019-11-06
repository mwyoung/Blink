ARDUINO_DIR 		:= $(HOME)/Documents/ArduinoIDE
ARDUINO_SKETCHBOOK	:= $(HOME)/Documents/Arduino
ARDUINO_PORT 		:= /dev/ttyUSB0
MONITOR_PORT		:= $(ARDUINO_PORT)
#Board info: https://github.com/sudar/Arduino-Makefile/blob/master/examples/Blink/Makefile
ARCHITECTURE		:= avr
BOARD_TAG 			:= nano
BOARD_SUB			:= atmega328

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

comm:
	stty -F $(ARDUINO_PORT) cs8 9600 ignbrk -brkint -imaxbel -opost -onlcr -isig -icanon -iexten -echo -echoe -echok -echoctl -echoke noflsh -ixon -crtscts

clear:
	rm -r build-$(BOARD_TAG)-$(BOARD_SUB)
