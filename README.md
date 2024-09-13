# Proton-For-Old-Vulkan or "Sarek"

Lasted Proton Versions patched to work with DXVK v1.10.3

*Why does this repository exist?*

Because there are still people with Vulkan-compatible GPUs that dont support Vulkan 1.3, but do have support for Vulkan 1.1+. 

Being forced to use WineD3D while playing on Linux or locally patch each version of Proton if playing on Steam.
The idea is to patch all the stable versions of proton and put them here.

Also understand that because we are using an old version of DXVK, game performance and compatibility will be worse than the newer ones, but it should be better than WineD3D.

Please be aware that this is a custom build of Proton and is **not** affiliated with Valve's Proton. If you encounter any issues specific to my Proton build from this repository that do not occur with Valve's version, kindly refrain from submitting a bug report to Valve's bug github. Instead, please reach out to me directly at my Gmail:pythonloverv2@gmail.com. Thank you for your understanding!

----

[![Badge License](https://img.shields.io/github/license/pythonlover02/Proton-Sarek)](LICENSE)
![Badge Language](https://img.shields.io/github/languages/top/pythonlover02/Proton-Sarek)
[![Stars](https://img.shields.io/github/stars/pythonlover02/Proton-Sarek?style=social)](https://github.com/pythonlover02/Proton-Sarek/stargazers)
![Hello There](https://img.shields.io/badge/hello-_there-blue)

----

# Table of Contents:
- [Install](#Install)
	- [Native](#Native)
	- [Flatpak](#Flatpak)
- [Roadmap](#Roadmap)
- [GPU-List](#GPU-List)
	- [Nvidia](#Nvidia)
	- [AMD](#AMD)
- [Parameters](#Parameters)
	- [Proton](#Proton)
	- [Optimization](#Optimization)
		- [System](#System)
   		- [Mesa](#Mesa)
		- [Nvidia](#Nvidia)
		- [Software Rendering](#software-rendering)
		- [Additional Tips](#additional-tips)
- [Testing](#Testing)
- [Building](#Building)
- [Credits](#Credits)


## Install:
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

## Roadmap:
Current status and upcoming changes for the Builds. The following features are categorized based on their current development status:

| Feature Description                                         | Status             |
|-----------------------------------------------------------|--------------------|
| **DXVK 1.10.3 on Proton**                                 | <span style="color: green;">**Ready**</span>✅               |
| **Global Patches for the Proton Prefix**                  | <span style="color: green;">**Ready**</span>✅               |
| **WineD3D uses OpenGL 4.6**                               | <span style="color: lightblue;">**Testing**</span>🔵         |
| **WineD3D with command stream and command serialization** | <span style="color: lightblue;">**Testing**</span>🔵         |
| **DXVK Async modification and implementation**            | <span style="color: red;">**Work in Progress**</span>🔴      |
| **Gallium Nine implementation**                           | <span style="color: red;">**Work in Progress**</span>🔴      |

## Status Definitions
- **Ready**: The change is included in both the Stable and Testing Builds.
- **Testing**: The change is only available in the Testing build.
- **Work in Progress**: Currently being worked on, might be included in the next Testing Release.

## GPU-List
This List still very much work in progress, if you know about a GPU that have Vulkan 1.1+ support but less than 1.3, that its not listed here pls write a gmail at pythonloverv2@gmail.com with the gpu name and the source. And thank you!!

## Nvidia
| Series                   | Graphics Cards                                                                                                                |
|--------------------------|------------------------------------------------------------------------------------------------------------------------------|
| **GeForce 700 Series**   | GeForce GTX 780 Ti, GeForce GTX 780, GeForce GTX 770, GeForce GTX 760, GeForce GTX 760 Ti (OEM), GeForce GTX 750 Ti, GeForce GTX 750, GeForce GTX 745, GeForce GT 740, GeForce GT 730, GeForce GT 720, GeForce GT 710 |
| **GeForce 600 Series**   | GeForce GTX 690, GeForce GTX 680, GeForce GTX 670, GeForce GTX 660 Ti, GeForce GTX 660, GeForce GTX 650 Ti BOOST, GeForce GTX 650 Ti, GeForce GTX 650, GeForce GTX 645, GeForce GT 640, GeForce GT 635, GeForce GT 630 |
| **GeForce 600M Series**  | GeForce GT 640M LE                                                                                                         |
| **NVIDIA TITAN Series**  | GeForce GTX TITAN X, GeForce GTX TITAN, GeForce GTX TITAN Black, GeForce GTX TITAN Z                                         |
| **Quadro Series**        | Quadro M6000 24GB, Quadro M6000, Quadro M5000, Quadro M4000, Quadro M2000, Quadro K6000, Quadro K5200, Quadro K5000, Quadro K4000, Quadro K4200, Quadro K2200, Quadro K2000, Quadro K2000D, Quadro K1200, Quadro K620, Quadro K600, Quadro K420, Quadro 410 |
| **Quadro NVS Series**    | NVS 510                                                                                                                     |
| **GRID Series**          | GRID K520                                                                                                                  |

## AMD:
| Series                     | Graphics Cards                                                                                                                  |
|----------------------------|-------------------------------------------------------------------------------------------------------------------------------|
| **Southern Islands (HD 7300)**  | Radeon HD 7350 OEM PCI, Radeon HD 7350 OEM                                                                                      |
| **Southern Islands (HD 7400)**  | Radeon HD 7450 OEM, Radeon HD 7470 OEM                                                                                      |
| **Southern Islands (HD 7500)**  | Radeon HD 7510 OEM, Radeon HD 7570 OEM, Radeon HD 7570                                                                          |
| **Southern Islands (HD 7600)**  | Radeon HD 7670 OEM                                                                                                           |
| **Southern Islands (HD 7700)**  | Radeon HD 7720 OEM, Radeon HD 7730, Radeon HD 7750, Radeon HD 7770 GHz Edition, Radeon HD 7790                                 |
| **Southern Islands (HD 7800)**  | Radeon HD 7850, Radeon HD 7870 GHz Edition, Radeon HD 7870 XT                                                                  |
| **Southern Islands (HD 7900)**  | Radeon HD 7950 Monica BIOS 1, Radeon HD 7950 Monica BIOS 2, Radeon HD 7950 Mac Edition, Radeon HD 7950, Radeon HD 7950 Boost, Radeon HD 7970, Radeon HD 7970 GHz Edition, Radeon HD 7970 X2, Radeon HD 7990 |
| **Sea Islands (HD 8300)**       | Radeon HD 8350 OEM                                                                                                           |
| **Sea Islands (HD 8400)**       | Radeon HD 8450 OEM, Radeon HD 8470 OEM, Radeon HD 8490 OEM                                                                   |
| **Sea Islands (HD 8500)**       | Radeon HD 8510 OEM (multiple variants), Radeon HD 8550 OEM, Radeon HD 8570 OEM Rebrand, Radeon HD 8570 OEM                   |
| **Sea Islands (HD 8600)**       | Radeon HD 8670 OEM                                                                                                           |
| **Sea Islands (HD 8700)**       | Radeon HD 8730 OEM, Radeon HD 8740 OEM, Radeon HD 8760 OEM, Radeon HD 8770 OEM                                                |
| **Sea Islands (HD 8800)**       | Radeon HD 8860 OEM, Radeon HD 8870 OEM                                                                                        |
| **Sea Islands (HD 8900)**       | Radeon HD 8950 OEM, Radeon HD 8970 OEM, Radeon HD 8990 OEM                                                                    |

## Parameters:

## Proton:
This are set on the Launch Options of a game on Steam, example:

	PROTON_USE_WINED3D=1 PROTON_NO_ESYNC=1 mesa_glthread=true %command%

The Optimzation variables are set on the same way on the launch options

| Environment Variable                          | Description                                                                                                                                     |
|-----------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------|
| `PROTON_USE_WINED3D=[0/1]`                   | Use OpenGL-based wined3d instead of Vulkan-based DXVK for d3d9 to d3d11.                                                                     |
| `PROTON_NO_D3D12=[0/1]`                      | Disables DX12.                                                                                                                                 |
| `PROTON_NO_D3D11=[0/1]`                      | Disables DX11.                                                                                                                                 |
| `PROTON_NO_D3D10=[0/1]`                      | Disables DX10.                                                                                                                                 |
| `PROTON_NO_D3D9=[0/1]`                       | Disables DX9.                                                                                                                                  |
| `PROTON_NO_ESYNC=[0/1]`                      | Do not use eventfd-based in-process synchronization primitives.                                                                                |
| `PROTON_NO_FSYNC=[0/1]`                      | Do not use futex-based in-process synchronization primitives.                                                                                  |
| `PROTON_FORCE_LARGE_ADDRESS_AWARE=[0/1]`    | Force Wine to enable the LARGE_ADDRESS_AWARE flag for all executables.                                                                        |
| `PROTON_HEAP_DELAY_FREE=[0/1]`               | Delay freeing some memory, to work around application use-after-free bugs.                                                                     |
| `PROTON_ENABLE_NVAPI=[0/1]`                  | Enable NVIDIA's NVAPI GPU support library.                                                                                                    |
| `PROTON_OLD_GL_STRING=[0/1]`                 | Set some driver overrides to limit the length of the GL extension string, for old games that crash on very long extension strings.             |
| `PROTON_USE_XALIA=[0/1]`                     | Enable Xalia, a program that can add a gamepad UI for some keyboard/mouse interfaces.                                                         |
| `MESA_GL_VERSION_OVERRIDE=4.6 MESA_GLSL_VERSION_OVERRIDE=460`               | Only for Mesa, it changes the default string of the OpenGL version to OpenGL 4.6, faking it and making the game believe that your GPU supports that version. The game may open or not; if it doesn't open, your only solution is [Software Rendering](#software-rendering). |

## Optimization:

## System:
First of all lets start with the must have, Gamemode and Zram.

| Tool/Library          | Description                                                                                                      | Link                                                 |
|-----------------------|------------------------------------------------------------------------------------------------------------------|------------------------------------------------------|
| `GameMode`               | GameMode is a daemon/lib combo for Linux that allows games to request a set of optimizations to be temporarily applied to the host OS and/or a game process. | [GitHub - GameMode](https://github.com/FeralInteractive/gamemode) |
| `Zram-Generator`       | Zram, formerly called compcache, is a Linux kernel module for creating a compressed block device in RAM.        | [GitHub - Zram-Generator](https://github.com/systemd/zram-generator) |

My personal recomendation its to search a tutorial for the installation of both in your favorite Linux Distro *;P*

## Mesa:
For AMD, Intel and Nvidia GPUs (Only Open Source Drivers)

| Environment Variable                    | Description                                                                                         |
|-----------------------------------------|-----------------------------------------------------------------------------------------------------|
| `mesa_glthread=[false/true]`           | Active or disable threaded optimizations for the OpenGL API.                                      |
| `MESA_SHADER_CACHE_DISABLE=[false/true]` | Disable or enable the GPU shader cache on the disk.                                              |
| `MESA_SHADER_CACHE_DIR=/path/to/location` | Path for the shader cache.                                                                         |

## Nvidia:
Nvidia GPUs with the Propietary Driver

| Environment Variable                       | Description                                                                                                                                    |
|--------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------|
| `__GL_THREADED_OPTIMIZATIONS=[0/1]`       | Active or disable threaded optimizations for the OpenGL API; while it can help to increase FPS, in some games it may worsen performance.       |
| `__GL_SHADER_DISK_CACHE=[0/1]`            | Enable or disable the GPU shader cache on the disk.                                                                                          |
| `__GL_SHADER_DISK_CACHE_PATH=/path/to/location` | Path for the shader cache.                                                                                                                    |

## Software Rendering:
No GPU Driver its used to render the game here, just the CPU, so it doesnt matter if you have the Nvidia Propietary Driver installed. But remember that you should have Mesa on your system

| Environment Variable                          | Description                                                                                                                                     |
|-----------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------|
| `LIBGL_ALWAYS_SOFTWARE=1`                     | Enables software rendering for the OpenGL API (4.5 is the maximum version supported). Not recommended for performance, but can be useful if no compatible GPU is available; uses CPU for rendering, which is slow. |
| `__GLX_VENDOR_LIBRARY_NAME=mesa`              | Specifies the use of the Mesa GLX vendor library for OpenGL rendering, use it when you are using the Nvidia Propietary Driver.               |
| `mesa_glthread=[false/true]`                 | Active or disable threaded optimizations for the OpenGL API.                                                                                  |
| `MESA_SHADER_CACHE_DISABLE=[false/true]`     | Disable or enable the GPU shader cache on the disk.                                                                                            |
| `MESA_SHADER_CACHE_DIR=/path/to/location`     | Path for the shader cache.                                                                                                                    |

## Additional Tips 

1. If that of a above its not enought, you might want to check newer kernel versions or patched/customiced kernels(zen, liquorix, xanmod, cachyoskernel, clearkernel, etc), i personally recomend the vanilla kernel tought

2. You might want to use the drop shader cache command of the linux kernel before playing a game, you should do:

   ```
   sudo su
   echo 3 > /proc/sys/vm/drop_caches
   ```

3. You might want to use Mangohud to cap your fps and set the fps cap mode, this its an example:

   ```
   MANGOHUD_CONFIG=fps_limit=60,fps_limit_method=early,no_display mangohud %command%
   ```

   What does this do? `MANGOHUD_CONFIG=parameters,parameters` overwrites the current MangoHud config. Another option is to add the following to the MangoHud config file:

   ```
   fps_limit=60
   fps_limit_method=early
   no_display
   ```

   Also, remember that for MangoHud to work with OpenGL games, you should use `mangohud --dlsym` instead of just `mangohud` in the Steam Launch Parameters.

   You can remove the `no_display` option (which hides the MangoHud HUD), change the `fps_limit` value to any number you like, and change the `fps_limit_method` to `early` (for smoother frametimes) or `late` (for the lowest latency).

   Check out the [MangoHud GitHub repository](https://github.com/flightlessmango/MangoHud) for more information and configuration options.

## Testing:
Games that i have tested so far

| Game                        | Status                                         | Issues/Notes                                                | Screenshot                                                            |
|-----------------------------|------------------------------------------------|------------------------------------------------------------|----------------------------------------------------------------------|
| **ULTRAKILL**               | Playable with DXVK 1.10.3 and WineD3D       | No issues so far; experience is the same as with DXVK 2.4.0 | ![Screenshot](https://github.com/user-attachments/assets/e9ab1204-b95b-4b4d-9405-cf8de0cb4537) |
| **Dark Souls III**          | Playable with DXVK 1.10.3 and WineD3D       | Higher GPU usage than v2.4.0; occasional stutters          | ![Screenshot](https://github.com/user-attachments/assets/d9aed291-588a-4ada-9846-e2ab60d1beb3) |
| **Project Wingman**         | Unplayable with DXVK 1.10.3 or WineD3D      | Needs a patch; works with DXVK 2.4.0                      | ![Screenshot](https://github.com/user-attachments/assets/52ac464c-0ee7-408d-8031-27bf3361842a) |
| **Red Orchestra 2**         | Playable with DXVK 1.10.3 and WineD3D       | Graphical glitches on sky; stutters at start               | ![Screenshot](https://github.com/user-attachments/assets/0b13b35e-ffef-4899-be2a-7097ae691303) |
| **S.T.A.L.K.E.R Call Of The Zone** | Playable with DXVK 1.10.3 and WineD3D | No issues so far                                           | ![Screenshot](https://github.com/user-attachments/assets/c86f8e09-4e35-4bfd-af12-ff2531e52ab8) |

## Building:

Heres the neat part, you dont :), now out of jokes, i manually assemble the next release based on the already compiled Proton or Proton GE version.

Why do I assemble it this way? Because I find it easier. I know that easier doesn't mean it's the right approach, but I try to do my best. Also, if we keep out the overwrite of the DXVK version, the only changes are in the wine.inf file, which contains the Proton/Wine prefix configuration. Features like using OpenGL 4.6 with WineD3D with command stream and command serialization were achieved there.

I’m not a great coder like most of the people out there on the Linux community; I just want to share the builds I've modified for my friends (both of them have GT 710s). So yeah, I am an amateur trying his best.

So How i replicate the releases here?

Simple just follow this steps:

1. Download the DXVK version that you want to use

2. Download the wine.inf file of the GitHub (If you want to use my patches and custom prefix)

3. Copy the contents of the DXVK/x32/ to ProtonBuild/files/lib/wine/dxvk/

4. Copy the contents of the DXVK/x64/ to ProtonBuild/files/lib64/wine/dxvk/

5. Copy the wine.inf file to ProtonBuild/files/share/wine/

6. You should change the name of the build, the one that Steam will show under the compatibility section. To do this go to ProtonBuild/ and open the compatibilitytool.vdf and change the internal name of the tool and the display_name 

7. Enjoy :P 

## Credits:
This project also uses many 3rd party code and patches, i just do little patches so everything works well with an older DXVK, go support them, they are the ones that do the heavy work

Valve: https://github.com/ValveSoftware/Proton

GloriousEggroll: https://github.com/GloriousEggroll/proton-ge-custom && https://www.patreon.com/gloriouseggroll

Kron4ek: https://github.com/Kron4ek/Wine-Builds/releases

doitsujin/ドイツ人 (Philip Rebohle): https://github.com/doitsujin/dxvk

Sporif: https://github.com/Sporif/dxvk-async

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

And the Great Redditor that came with the name ❤️:
	
 	Meshuggah333
