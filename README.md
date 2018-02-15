# MoltenSteamLink
[MoltenGamepad](https://github.com/jgeumlek/MoltenGamepad/) for the Steam Link

##Installing
Grab the latest build from the [Releases](https://github.com/CollinScripter/MoltenSteamLink/releases) page
Extract the .zip file and copy the steamlink folder to a FAT32 formatted flash drive.
Place the flash drive into a steamlink and powercycle it. Run MoltenGamepad from the menu

## Building
First, clone the [Steam Link SDK](https://github.com/ValveSoftware/steamlink-sdk)

	git clone --recurse-submodules https://github.com/ValveSoftware/steamlink-sdk.git

Once fully cloned, run ./build_steamlink.sh

