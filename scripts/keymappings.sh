#!/bin/sh

# Replace Right Cmd with Right Alt 
# (and Right Alt with Right CMD as a failsafe for MacBook keyboard)
hidutil property --set '{"UserKeyMapping":[ 
    {"HIDKeyboardModifierMappingSrc":0x7000000E6,"HIDKeyboardModifierMappingDst":0x7000000E7},
    {"HIDKeyboardModifierMappingSrc":0x7000000E7,"HIDKeyboardModifierMappingDst":0x7000000E6} 
]}'