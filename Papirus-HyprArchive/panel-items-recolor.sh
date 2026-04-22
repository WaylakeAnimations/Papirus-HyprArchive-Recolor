#!/bin/bash

# hex color regex in case i need it '#([a-z]|[0-9]){6}'

# colors
# hyarc_white #f6fafb;
# hyarc_dark #35475d;
# hyarc_blue #3498db;

find . -name "*.svg" -execdir sh -c 'echo {} ; sed -i "s/#444444/#35475d/" {} ; sed -i "s/#4285f4/#3498db/" {} ; sed -i "s/#ff9800/#f6fafb/" {}' \;
