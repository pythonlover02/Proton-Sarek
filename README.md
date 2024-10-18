# Proton-For-Old-Vulkan or "Sarek"

Sarek (Proton-For-Old-Vulkan): A custom Proton build with DXVK 1.10.3 for users with GPUs that support Vulkan 1.1+ but not Vulkan 1.3, or for those with non-Vulkan support who want a plug-and-play option featuring personal patches.

**Why does this repository exist?**

Because there are still users with GPUs that support Vulkan 1.1+ but not Vulkan 1.3, as well as others with non-Vulkan support. Those who can use DXVK often rely on older Proton versions, which suffer from lower compatibility and performance compared to newer builds. Meanwhile, users dependent on WineD3D frequently face poor gaming experiences. This repository provides patched versions of Proton and/or Proton-GE, offering better performance with DXVK v1.10.3 and significant improvements to WineD3D, ensuring a smoother experience for both Vulkan and non-Vulkan setups.

Please be aware that this is a custom build of Proton and is **not** affiliated with Valve's Proton. If you encounter any issues specific to my Proton build from this repository that do not occur with Valve's version, kindly refrain from submitting a bug report to Valve's bug github. Instead, please report the issue directly on this GitHub. Thank you for your understanding!

----

![Badge Language](https://img.shields.io/github/languages/top/pythonlover02/Proton-Sarek)
![GitHub commits](https://img.shields.io/github/commits-since/pythonlover02/Proton-Sarek/latest/dev?label=Total%20Commits)
![Hello There](https://img.shields.io/badge/hello-_there-blue)
[![Stars](https://img.shields.io/github/stars/pythonlover02/Proton-Sarek?style=social)](https://github.com/pythonlover02/Proton-Sarek/stargazers)

----

## Table of Contents:
- [Install](#Install)
	- [Native](#Native)
	- [Flatpak](#Flatpak)
- [Roadmap](#Roadmap)
- [Known Bugs](#Known-Bugs)
- [GPU List](#GPU-List)
	- [NVIDIA](#NVIDIA)
	- [Intel && AMD](#Intel--AMD)
- [Parameters](#Parameters)
	- [Proton](#Proton)
	- [Optimization](#Optimization)
		- [System](#System)
   		- [Sarek](#Sarek)
		- [Additional Tips](#Additional-Tips)
- [Testing](#Testing)
- [Building](#Building)
- [Credits](#Credits)


## Install:

###  Native:

1. Download a release from the release [page](https://github.com/pythonlover02/Proton-Sarek/releases)

2. Create a ~/.local/share/Steam/compatibilitytools.d/ directory if it does not exist.

3. Extract the release inside
 
4. Log in inside Steam and go to the option menu, then compatibility and check Enable "Enable Steam Play for all other titles", instead of the default proton, choose the one that you downloaded.

5. Restart and thats it!!! Enjoy :P
 
### Flatpak:

1. Download a release from the release [page](https://github.com/pythonlover02/Proton-Sarek/releases)
 
2. Create a ~/.var/app/com.valvesoftware.Steam/data/Steam/compatibilitytools.d/ directory if it does not exist.

3. Extract the release inside
 
4. Log in inside Steam and go to the option menu, then compatibility and check Enable "Enable Steam Play for all other titles", instead of the default proton, choose the one that you downloaded.

5. Restart and thats it!!! Enjoy :P

## Roadmap:
Current status and upcoming changes for the Builds. The following features are categorized based on their current development status:

| Feature Description                                         | Status             |
|-----------------------------------------------------------|--------------------|
| **DXVK 1.10.3 on Proton**                                 | <span style="color: green;">**Ready**</span>               |
| **VKD3D-proton 2.6 on Proton**                            | <span style="color: green;">**Ready**</span>               |
| **Global Patches for the Proton Prefix**                  | <span style="color: green;">**Ready**</span>               |
| **WineD3D uses OpenGL 4.6**                               | <span style="color: green;">**Ready**</span>               |
| **WineD3D with command stream and command serialization** | <span style="color: green;">**Ready**</span>               |
| **PROTON_TWEAKS Parameters** 			            | <span style="color: green;">**Ready**</span>               |
| **DXVK Async implementation**                             | <span style="color: green;">**Async**</span>               |
| **Gallium Nine implementation**                           | <span style="color: green;">**Work in Progress**</span>    |

### Status Definitions:
- **Ready**: The change is included in the Stable, Stable Async and Testing Builds.
- **Async**: The change is available in the Async build.
- **Testing**: The change is available in the Testing build.
- **Work in Progress**: Currently being worked on, might be included in the next Testing Release.

## Known Bugs:
Sometimes, when using WineD3D, the maximum supported OpenGL version is capped at 4.4 instead of the expected 4.6. This appears to be a glitch that can be temporarily resolved by following these steps:

1. Start the game using a different Proton version.

2. Once the game is running and rendering properly, close it.

3. Switch back to the desired Sarek Proton build.

4. Open the game, and it should now use the correct OpenGL version.

I’m still investigating a permanent solution to this issue, but this workaround has proven effective in the meantime.

Edit: It should be fixed on versions 9-15-r1 and above thanks to [Artewar67](https://github.com/Artewar67)

## GPU List:
Here its the GPU List of the ones on witch its recommended to use this Proton Build

### NVIDIA:
On NVIDIA cards, it should be all the ones that are stuck on the 470 drivers, previous drivers like 440, 415, 390 and Nouveau users.

### Intel && AMD:
Any GPU or iGPU that is OpenGL only or has a Vulkan API lower than 1.3.

## Parameters:

### Proton:
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
| `MESA_GL_VERSION_OVERRIDE=4.6 MESA_GLSL_VERSION_OVERRIDE=460`               | Only for Mesa, it changes the default string of the OpenGL version to OpenGL 4.6, faking it and making the game believe that your GPU supports that version. The game may open or not; if it doesn't open, your only solution is Software Rendering. |

## Optimization:

### System:
First of all lets start with the must have, Gamemodem, Zram and MangoHud.

| Tool/Library          | Description                                                                                                      | Link                                                 |
|-----------------------|------------------------------------------------------------------------------------------------------------------|------------------------------------------------------|
| `GameMode`               | GameMode is a daemon/lib combo for Linux that allows games to request a set of optimizations to be temporarily applied to the host OS and/or a game process. | [GitHub - GameMode](https://github.com/FeralInteractive/gamemode) |
| `Zram-Generator`       | Zram, formerly called compcache, is a Linux kernel module for creating a compressed block device in RAM.        | [GitHub - Zram-Generator](https://github.com/systemd/zram-generator) |
| `MangoHud`              | MangoHud is a Vulkan and OpenGL overlay for monitoring FPS, temperatures, CPU/GPU load and more.              | [GitHub - MangoHud](https://github.com/flightlessmango/MangoHud) |

My personal recomendation its to search a tutorial for the installation of the three in your favorite Linux Distro *;P*

### Sarek:
Starting with the Sarek 9-16 release, Sarek will include custom parameters aimed at maximizing performance. However, it's important to note that while these parameters can boost performance, they may also worsen it in certain situations, cause visual glitches, or lead to instability. It's recommended to use them only when necessary.

| Environment Variable              | Description                                                                                      |
|-----------------------------------|--------------------------------------------------------------------------------------------------|
| `PROTON_TWEAKS=[0/1]`             | Enables all the `PROTON_TWEAKS_*` parameters                                                     |
| `PROTON_TWEAKS_PROTON=[0/1]`      | Adds a set of Proton/Wine optimizations as environment variables                                 |
| `PROTON_TWEAKS_NVIDIA=[0/1]`      | Adds a set of optimizations as environment variables for the NVIDIA proprietary drivers          |
| `PROTON_TWEAKS_MESA=[0/1]`        | Adds a set of optimizations as environment variables for the MESA drivers                        |

### Additional Tips:

1. If that of a above its not enought, you might want to check newer kernel versions or patched/customiced kernels(zen, liquorix, xanmod, cachyoskernel, clearkernel, etc), i personally recomend the vanilla kernel tought

2. You might want to use the drop shader cache command of the linux kernel before playing a game, you should do:

   ```
   sudo su
   echo 3 > /proc/sys/vm/drop_caches
   exit
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

Follow these steps to add to your Proton Build the Sarek patches:

### 1. Download/Compile Proton
- **Option 1:** Compile your Proton build from source.

- **Option 2:** Download a precompiled Proton build (GE-Proton or Valve's stable release are the only ones officially supported).

### 2. Get the Sarek Patches
- Clone or download the Sarek-Patches dir from this repository.

### 3. Rename the Proton Executable (if necessary)
- If you're using **GE-Proton**, no need to rename anything, as the default `proton` file works out of the box.
- For **Valve's Proton** builds:
  - Rename `proton` (from the Sarek-Patches dir) to something else like `proton-ge`.
  - Rename the `proton-valve` file from the Sarek-Patches to `proton`.

### 4. Modify Compatibilitytool.vdf and Proton Files
- Edit both `compatibilitytool.vdf` and `proton` files to reflect the name of your build (replace "Sarek" with your custom build name).

- Optionally, make additional tweaks to `wine.inf` or other configuration files as needed for your specific build.

### 5. Make the `make.sh` Script Executable
- If you want a build with normal DXVK or DXVK-Async, make the appropriate script executable:

		chmod +x /path/to/make.sh       # For normal DXVK
		chmod +x /path/to/make-async.sh  # For DXVK-Async

### 6. Run the Build Script

- Execute the script with superuser privileges:

		sudo /path/to/make.sh

- or for the async build:

		sudo /path/to/make-async.sh

When prompted, provide the path to the Proton build you downloaded or compiled.

### 7. Enjoy Your Custom Proton Build!

- Thats all, enjoy *:)*

## Credits:
This project also uses many 3rd party code and patches, i just do little patches so everything works well with an older DXVK, go support them, they are the ones that do the heavy work

### Valve:
https://github.com/ValveSoftware/Proton && https://github.com/ValveSoftware/wine

First of all, we extend our sincere thanks to Valve for their incredible contributions to the Linux gaming community through the creation of Proton, which has made gaming on Linux more accessible and enjoyable for everyone. As such, we sometimes use Valve's Proton builds as a base for our internal or public releases, or for comparison with those based on Proton-GE. Additionally, much of the code in the wine.inf file is directly sourced from Valve's Proton and Wine.

### GloriousEggroll: 
https://github.com/GloriousEggroll/proton-ge-custom && https://github.com/GloriousEggroll/wine-ge-custom

We would like to extend our gratitude to GloriousEggroll for the creation of both Proton-GE and Wine-GE, which have greatly enhanced gaming on Linux. Most of the time, the releases of this project are based on Proton-GE. We also use many configurations from the wine.inf file, from both Wine-GE and Proton-GE, particularly the custom per-game configurations.

### doitsujin/ドイツ人 (Philip Rebohle):
https://github.com/doitsujin/dxvk

This project benefits from the incredible work of Philip Rebohle (doitsujin) and his creation of DXVK, which plays a key role in Linux gaming, making Windows games run smoothly on Linux through Vulkan. We deeply appreciate his contributions and proudly use DXVK in this project.

### Sporif: 
https://github.com/Sporif/dxvk-async

This project incorporates work from Sporif's DXVK Async, which provides patched versions of DXVK that enable asynchronous pipeline compilation. This allows shaders to be compiled in the background, reducing stuttering caused by synchronous shader compilation, and enhancing performance in certain scenarios. We would like to thank Sporif for their valuable contributions, and we are pleased to integrate DXVK Async into this project.

### HansKristian-Work: 
https://github.com/HansKristian-Work/vkd3d-proton

This project benefits from the incredible work of HansKristian-Work and his creation of VKD3D-proton, which plays a key role in Linux gaming, making Windows DX12 games run smoothly on Linux through Vulkan. We deeply appreciate his contributions and use VKD3D-proton in this project.

### Also i want to thanks all of those reddit users that help me make the Supported GPU List:

	wolfegothmog

	mrvictorywin

	Alternative-Pie345

	Cool-Arrival-2617

	oln

	Informal-Clock

	turdas

	AlienOverlordXenu 

### And the Great Redditor that came with the name ❤️:
	
 	Meshuggah333
