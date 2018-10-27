32-bit kernel tree for Motorola Moto C Plus, codenamed panelli

## Kernel source changed
Kernel source is now mostly based on nicklaus branch (https://github.com/MotorolaMobilityLLC/kernel-mtk/tree/nougat-7.1.1-release-nicklaus) of official moto source code.

I did a rebase but there were several errors since nicklaus had more features than panelli.

So I took the long way, i.e. manually copy paste, edit & remove unwanted stuffs to bring up panelli.

Now kernel is fine and we can say goodbye to the horrible panelli source.

## Bugs
None

## Building
Please build using `panelli_defconfig`

If you're building for 64bit then please edit make file to remove arm tuning flags & add arm64 flags.
