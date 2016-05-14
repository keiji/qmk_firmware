#!/bin/bash -eu

# If you want build mannualy, exec below command.
# docker run -i -t -v $(pwd):/qmk_firmware vvakame/build-qmk_firmware /bin/bash

KEYMAP=vv

docker run -t --rm -v $(pwd):/qmk_firmware vvakame/build-qmk_firmware /bin/bash \
	-ci "cd /qmk_firmware/keyboard/ergodox_ez && make KEYMAP=$KEYMAP"
	# -ci "cd /qmk_firmware/keyboard/ergodox_ez && make clean && make KEYMAP=$KEYMAP CONSOLE_ENABLE=yes"
ls -la $(pwd)/keyboard/ergodox_ez/ergodox_ez.hex
cp $(pwd)/keyboard/ergodox_ez/ergodox_ez.hex $(pwd)
cp $(pwd)/keyboard/ergodox_ez/ergodox_ez.hex $(pwd)/keyboard/ergodox_ez/keymaps/$KEYMAP/firmware.hex
