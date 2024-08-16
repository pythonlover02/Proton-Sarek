# Proton-For-Old-Vulkan "Sarek"
Lasted Proton Versions patched to work with DXVK v1.10.3

*Why does this repository exist?*

Because there are still people with a Vulkan-compatible gpus that doesn't support Vulkan 1.3, and they are forced to use WineD3D while playing on Linux or locally patch each version of Proton if playing on Steam.
The idea is to patch all the stable versions of proton and put them here.

Also understand that because we are using an old version of DXVK, game performance and compatibility will be worse than the newer ones, but it should be better than WineD3D.

# Credits:
This this project also uses many 3rd party code and patches, i just do little patches so everything works well with an older DXVK, go support them, they are the ones that do the heavy work

Valve: https://github.com/ValveSoftware/Proton

GloriousEggroll: https://github.com/GloriousEggroll/proton-ge-custom && https://www.patreon.com/gloriouseggroll

doitsujin/ドイツ人 (Philip Rebohle): https://github.com/doitsujin/dxvk

TKG (Etienne Juvigny): https://github.com/Frogging-Family/wine-tkg-git && https://www.patreon.com/tkglitch

HansKristian/themaister (Hans-Kristian Arntzen): https://github.com/HansKristian-Work/vkd3d-proton

# How to install:
1. Download a release from the release page
 
*For Steam Flatpak:*
 
  2. Create a ~/.var/app/com.valvesoftware.Steam/data/Steam/compatibilitytools.d/ directory if it does not exist.

  3. Extract the release inside
 
  4. Log in inside Steam and go to the option menu, then compatibility and check Enable "Enable Steam Play for all other titles", instead of the default proton, choose the one that you downloaded.

  5. Restart and thats it!!! Enjoy :P

  *For Normal Steam:*
 
  2. Create a ~/.local/share/Steam/compatibilitytools.d/ directory if it does not exist.

  3. Extract the release inside
 
  4. Log in inside Steam and go to the option menu, then compatibility and check Enable "Enable Steam Play for all other titles", instead of the default proton, choose the one that you downloaded.

  5. Restart and thats it!!! Enjoy :P
