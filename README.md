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
	- [Nvidia](#Nvidia)
	- [AMD](#AMD)
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
This List still very much work in progress, if you know about a GPU that have Vulkan 1.1+ support that its not listed here pls write a gmail at pythonloverv2@gmail.com with the gpu name and the source. And thank you!!

## Nvidia
GeForce 700 Series:
    
    GeForce GTX 780 Ti
    GeForce GTX 780
    GeForce GTX 770
    GeForce GTX 760
    GeForce GTX 760 Ti (OEM)
    GeForce GTX 750 Ti
    GeForce GTX 750
    GeForce GTX 745
    GeForce GT 740
    GeForce GT 730
    GeForce GT 720
    GeForce GT 710

GeForce 600 Series:

    GeForce GTX 690
    GeForce GTX 680
    GeForce GTX 670
    GeForce GTX 660 Ti
    GeForce GTX 660
    GeForce GTX 650 Ti BOOST
    GeForce GTX 650 Ti
    GeForce GTX 650
    GeForce GTX 645
    GeForce GT 640
    GeForce GT 635
    GeForce GT 630
    
GeForce 600M Series (Notebooks):

    GeForce GT 640M LE

NVIDIA TITAN Series:

    GeForce GTX TITAN X
    GeForce GTX TITAN
    GeForce GTX TITAN Black
    GeForce GTX TITAN Z

Quadro Series:

    Quadro M6000 24GB
    Quadro M6000
    Quadro M5000
    Quadro M4000
    Quadro M2000
    Quadro K6000
    Quadro K5200
    Quadro K5000
    Quadro K4000
    Quadro K4200
    Quadro K2200
    Quadro K2000
    Quadro K2000D
    Quadro K1200
    Quadro K620
    Quadro K600
    Quadro K420
    Quadro 410

Quadro NVS Series:

	NVS 510

GRID Series:

	GRID K520

## AMD:
Southern Islands (HD 7300)

    Radeon HD 7350 OEM PCI
    Radeon HD 7350 OEM

Southern Islands (HD 7400)

    Radeon HD 7450 OEM
    Radeon HD 7470 OEM

Southern Islands (HD 7500)

    Radeon HD 7510 OEM
    Radeon HD 7570 OEM
    Radeon HD 7570
    
Southern Islands (HD 7600)

    Radeon HD 7670 OEM

Southern Islands (HD 7700)

    Radeon HD 7720 OEM
    Radeon HD 7730
    Radeon HD 7750
    Radeon HD 7770 GHz Edition
    Radeon HD 7790

Southern Islands (HD 7800)

    Radeon HD 7850
    Radeon HD 7870 GHz Edition
    Radeon HD 7870 XT

Southern Islands (HD 7900)

    Radeon HD 7950 Monica BIOS 1
    Radeon HD 7950 Monica BIOS 2
    Radeon HD 7950 Mac Edition
    Radeon HD 7950
    Radeon HD 7950 Boost
    Radeon HD 7970
    Radeon HD 7970 GHz Edition
    Radeon HD 7970 X2
    Radeon HD 7990

Sea Islands (HD 8300)

    Radeon HD 8350 OEM

Sea Islands (HD 8400)

    Radeon HD 8450 OEM
    Radeon HD 8470 OEM
    Radeon HD 8490 OEM

Sea Islands (HD 8500)

    Radeon HD 8510 OEM
    Radeon HD 8510 OEM
    Radeon HD 8550 OEM
    Radeon HD 8570 OEM Rebrand
    Radeon HD 8570 OEM

Sea Islands (HD 8600)

    Radeon HD 8670 OEM

Sea Islands (HD 8700)

    Radeon HD 8730 OEM
    Radeon HD 8740 OEM
    Radeon HD 8760 OEM
    Radeon HD 8770 OEM

Sea Islands (HD 8800)

    Radeon HD 8860 OEM
    Radeon HD 8870 OEM

Sea Islands (HD 8900)

    Radeon HD 8950 OEM
    Radeon HD 8970 OEM
    Radeon HD 8990 OEM
    
## Credits:
This this project also uses many 3rd party code and patches, i just do little patches so everything works well with an older DXVK, go support them, they are the ones that do the heavy work

Valve: https://github.com/ValveSoftware/Proton

GloriousEggroll: https://github.com/GloriousEggroll/proton-ge-custom && https://www.patreon.com/gloriouseggroll

doitsujin/ドイツ人 (Philip Rebohle): https://github.com/doitsujin/dxvk

TKG (Etienne Juvigny): https://github.com/Frogging-Family/wine-tkg-git && https://www.patreon.com/tkglitch

HansKristian/themaister (Hans-Kristian Arntzen): https://github.com/HansKristian-Work/vkd3d-proton

Also i want to thanks all of those reddit users that help me make the Supported GPU List:

	wolfegothmog

	mrvictorywin

	Alternative-Pie345

	Cool-Arrival-2617

	oln

	Informal-Clock

	turdas

	AlienOverlordXenu 
