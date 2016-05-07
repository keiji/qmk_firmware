#!/bin/bash

# If you want build mannualy, exec below command.
# docker run -i -t -v $(pwd):/qmk_firmware vvakame/build-qmk_firmware /bin/bash

docker run -t --rm -v $(pwd):/qmk_firmware vvakame/build-qmk_firmware /bin/bash -ci "cd /qmk_firmware/keyboard/ergodox_ez && make KEYMAP=vv"
ls -la $(pwd)/keyboard/ergodox_ez/ergodox_ez.hex
