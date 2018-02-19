# MoltenSteamLink
[MoltenGamepad](https://github.com/jgeumlek/MoltenGamepad/) for the Steam Link. This allows for the Wiimote Classic Controllers to be used as normal controllers on the Steam Link.

## Installing
Grab the latest build from the [Releases](https://github.com/CollinScripter/MoltenSteamLink/releases) page.

Extract the .zip file and copy the `steamlink` folder to a flash drive.

Place the flash drive into a Steam Link and powercycle it. Run MoltenGamepad from the menu using a keyboard or other controller.

## Building
Clone the repository

	git clone --recurse-submodules https://github.com/CollinScripter/MoltenSteamLink.git

Once fully cloned, run ./build_steamlink.sh

## Pairing
Pair through the Steam Link like you normally would with any other bluetooth device.

For joycons see more info at [Joycon Activation](https://github.com/jgeumlek/MoltenGamepad/blob/master/source/plugin/joycon/README.md#joy-con-activation)

## Issues
MoltenGamepad freaks out if the first wiimote connected is turned off.

The remotes need to be rebooted when switching accessories.

Switch controllers are untested.
