# Proton-For-Old-Vulkan "Sarek"
Lasted Proton Versions patched to work with DXVK v1.10.3

*Why does this repository exist?*

Because there are still people with a Vulkan-compatible gpus that doesn't support Vulkan 1.3, and they are forced to use WineD3D while playing on Linux or locally patch each version of Proton if playing on Steam.
The idea is to patch all the stable versions of proton and put them here.

Also understand that because we are using an old version of DXVK, game performance and compatibility will be worse than the newer ones, but it should be better than WineD3D.

Please be aware that this is a custom build of Proton and is **not** affiliated with Valve's Proton. If you encounter any issues specific to my Proton build from this repository that do not occur with Valve's version, kindly refrain from submitting a bug report to Valve's bug github. Instead, please reach out to me directly at my Gmail:pythonloverv2@gmail.com. Thank you for your understanding!

# Table of Contents:
- [Installation](#Installation)
	- [Native](#Native)
	- [Flatpak](#Flatpak)
- [GPU-List](#GPU-List)
- [Credits](#Credits)

## Installation:
1. Download a release from the release page
2. Now follow the instruction of the installation for Flatpak Steam or Native Steam

##  *Native*
 
  3. Create a ~/.local/share/Steam/compatibilitytools.d/ directory if it does not exist.

  4. Extract the release inside
 
  5. Log in inside Steam and go to the option menu, then compatibility and check Enable "Enable Steam Play for all other titles", instead of the default proton, choose the one that you downloaded.

  6. Restart and thats it!!! Enjoy :P
 
## *Flatpak*
 
  3. Create a ~/.var/app/com.valvesoftware.Steam/data/Steam/compatibilitytools.d/ directory if it does not exist.

  4. Extract the release inside
 
  5. Log in inside Steam and go to the option menu, then compatibility and check Enable "Enable Steam Play for all other titles", instead of the default proton, choose the one that you downloaded.

  6. Restart and thats it!!! Enjoy :P

## GPU-List

	//Working on it//

## Credits:
This this project also uses many 3rd party code and patches, i just do little patches so everything works well with an older DXVK, go support them, they are the ones that do the heavy work

Valve: https://github.com/ValveSoftware/Proton

GloriousEggroll: https://github.com/GloriousEggroll/proton-ge-custom && https://www.patreon.com/gloriouseggroll

doitsujin/ドイツ人 (Philip Rebohle): https://github.com/doitsujin/dxvk

TKG (Etienne Juvigny): https://github.com/Frogging-Family/wine-tkg-git && https://www.patreon.com/tkglitch

HansKristian/themaister (Hans-Kristian Arntzen): https://github.com/HansKristian-Work/vkd3d-proton
