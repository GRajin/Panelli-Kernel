64-bit kernel tree for moto c plus codenamed panelli

## ARM status
Working

## ARM64 status
Under Testing/Development

## Bugs
"Volume +" hardware switch does not work

Charging hardware fan5405 driver causes bootloop so linear charging for now and its damn slow.

## Building
Please build using `panelli_defconfig`

If you're building for 64bit then please edit make file to remove arm tuning flags & add arm64 flags.
