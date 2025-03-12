# Proton-For-Old-Vulkan or "Sarek"

Sarek (Proton-For-Old-Vulkan): A custom Proton build with [DXVK-Sarek](https://github.com/pythonlover02/DXVK-Sarek) for users with GPUs that support Vulkan 1.1+ but not Vulkan 1.3, or for those with non-Vulkan support who want a plug-and-play option featuring personal patches.

**Why does this repository exist?**

Because there are still users with GPUs that support Vulkan 1.1+ but not Vulkan 1.3, and others with non Vulkan support. Those who can use DXVK often rely on older versions of Proton, which suffer from lower compatibility and performance compared to newer builds. Meanwhile, users dependent on WineD3D often face a poor gaming experience. This repository provides patched versions of Proton and/or GE-Proton to try to solve these problems. This is done by using [DXVK-Sarek](https://github.com/pythonlover02/DXVK-Sarek) and adding tweaks and [Parameters](#Sarek) to Proton.

Please be aware that this is a custom build of Proton and is **not** affiliated with Valve's Proton. If you encounter any issues specific to my Proton build from this repository that do not occur with Valve's version, kindly refrain from submitting a bug report to Valve's bug GitHub. Instead, please report the issue directly on this GitHub. Thank you for your understanding!

----

![Badge Language](https://img.shields.io/github/languages/top/pythonlover02/Proton-Sarek)
[![Stars](https://img.shields.io/github/stars/pythonlover02/Proton-Sarek?style=social)](https://github.com/pythonlover02/Proton-Sarek/stargazers)
[![Static Badge](https://img.shields.io/badge/Avaliable_on-ProtonPlus-blue)](https://github.com/Vysp3r/ProtonPlus)

----

## Table of Contents:
- [Install](#Install)
	- [Native](#Native)
	- [Flatpak](#Flatpak)
- [GPU List](#GPU-List)
	- [NVIDIA](#NVIDIA)
	- [Intel && AMD](#Intel--AMD)
- [Parameters](#Parameters)
	- [Proton](#Proton)
	- [Optimization](#Optimization)
		- [System](#System)
   		- [Sarek](#Sarek)
		- [Additional Tips](#Additional-Tips)
- [Building](#Building)
- [Credits](#Credits)


## Install:

###  Native:

1. Download a release from the release [page](https://github.com/pythonlover02/Proton-Sarek/releases)

2. Create a `~/.steam/root/compatibilitytools.d` directory if it does not exist.

3. Extract the release inside
 
4. Log in inside Steam and go to the option menu, then compatibility and check Enable "Enable Steam Play for all other titles", instead of the default proton, choose the one that you downloaded.

5. Restart and thats it!!! Enjoy :P
 
### Flatpak:

1. Download a release from the release [page](https://github.com/pythonlover02/Proton-Sarek/releases)
 
2. Create a `~/.var/app/com.valvesoftware.Steam/data/Steam/compatibilitytools.d/` directory if it does not exist.

3. Extract the release inside
 
4. Log in inside Steam and go to the option menu, then compatibility and check Enable "Enable Steam Play for all other titles", instead of the default proton, choose the one that you downloaded.

5. Restart and thats it!!! Enjoy :P

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

[Proton Launch Parameters](https://github.com/ValveSoftware/Proton/tree/proton_9.0?tab=readme-ov-file#runtime-config-options)

[GE-Proton Launch Parameters](https://github.com/GloriousEggroll/proton-ge-custom?tab=readme-ov-file#modification)

[Proton-Sarek Launch Parameters](#Sarek)

**Note:** Because Proton-Sarek is based on GE-Proton and that one is based on Proton, the bast majority of launch parameters under both GE-Proton and Valve Proton will work on Proton-Sarek.

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
These are the custom parameters introduced in Sarek to provide fallback rendering options or controll over the build.

| Environment Variable              | Description                                                                                                                     |
|-----------------------------------|---------------------------------------------------------------------------------------------------------------------------------|
| `PROTON_SAREK_PROFILE`            | Changes the [Sarek Runtime](#Sarek-Runtime) behavior, it accepts the next values: `base`, `default` and `agg`.                  |
| `PROTON_OGL_THREAD=[0/1]`         | Enables OpenGL Threaded Optimizations, might increase or decrease fps depending on the game.                                    |
| `PROTON_OGL_SOFTWARE=[0/1]`       | Uses LLVMpipe for CPU-based rendering for OpenGL, supporting API version 4.6.                                                   |
| `PROTON_VK_SOFTWARE=[0/1]`        | Uses Lavapipe for CPU-based rendering for Vulkan, supporting API version 1.3.                                                   |

**Requirements for Using Lavapipe (Vulkan Software Rendering):**
- **Mesa Version**: 20.3 or newer
- **CPU**: Multi-core recommended for better performance

**Requirements for Using LLVMpipe (OpenGL Software Rendering):**
- **Mesa Version**: Any recent version (LLVMpipe is well-supported in current Mesa releases)
- **CPU**: Multi-core recommended for better performance

### Sarek Runtime:
A simple runtime that configures the game environment by adding environment variables. Its behavior can be changed using the `PROTON_SAREK_PROFILE` parameter, which accepts the following values: `base`, `default`, and `agg`.

**Configuration Options**:

- **"base"(Valve's default settings):**
  - Disables logging for Wine, DXVK, and VKD3D to enhance performance.

- **"default" (Default Value):**
  - Inherits all settings from the Base configuration.
  - Introduces a set of fixes for OpenGL/Vulkan for old GPUs.

- **"agg":**
  - Represents an aggressive performance tuning mode, incorporating all features from the default configuration, plus the following enhancements:
  
  **OpenGL/WineD3D:**

  **NVIDIA:**
  - Forces no Vsync to reduce input lag.
  - Forces rendering textures under performance settings instead of the default quality settings.
  - Forces no Full-Screen Anti-Aliasing (FSAA) and FXAA.
  - Prevents the usage of anisotropic filtering.
  - Disables Variable Refresh Rate (VRR).

  **Mesa:**
  - Forces no Vsync to minimize input lag.
  - Disables error checking within the API to avoid CPU performance losses.
  - Disables dithering.
  - Forces no Full-Screen Anti-Aliasing (FSAA) 
  - Prevents the usage of anisotropic filtering
  
  **DXVK:**

  **NVIDIA && Mesa:**
  - Disable vertical synchronization (vsync)
  - Set the maximum tessellation factor to 8, limiting tessellation detail to improve performance in games that overuse it.
  - Enables relaxed pipeline barriers for UAV (unordered access view) writes in D3D11, which can improve performance (with a risk of rendering glitches).
  - Tell the driver to ignore certain graphics barriers around UAV writes from fragment shaders, aiming to reduce synchronization overhead on D3D11.
  - Disable anisotropic filtering.
  - Disable the declaration of vertex positions as invariant in D3D, which may reduce a small performance cost (at the potential risk of increased Z-fighting).
  - Enables fast (but less precise) floating point quirk emulation in D3D9, which can speed up computations in games that rely on these operations.

> [!NOTE]
> The agg profile is intended to be used on PCs with weak GPUs, trying to help with stuttering and some extra fps, visual glitches are expected, so please do not report them if you cannot replicate the problem without using the agg profile.

**Sources for the Sarek Runtime:**

[OpenGL Extensions Documentation](https://registry.khronos.org/OpenGL/extensions/EXT/)

[Mesa Documentation](https://docs.mesa3d.org/envvars.html#environment-variables)

[NVIDIA 470 Drivers Documentation](https://download.nvidia.com/XFree86/Linux-x86_64/470.256.02/README/openglenvvariables.html)

[NVIDIA 390 Drivers Documentation](https://download.nvidia.com/XFree86/Linux-x86_64/390.157/README/openglenvvariables.html)

[DXVK-Sarek Config Documentation](https://github.com/pythonlover02/DXVK-Sarek/blob/1.10.x-Proton-Sarek/dxvk.conf)

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

## Building:

Follow these steps to add to your Proton Build the Sarek patches:

### 1. Download/Compile Proton
- **Option 1:** Compile your Proton build from source.

- **Option 2:** Download a precompiled Proton build (GE-Proton or Valve's Stable releases are the only ones officially supported).

### 2. Get the Sarek Patches
- Clone or download the Sarek-Patches dir from this repository.

### 3. Rename the Proton Executable (if necessary)
- If you're using **GE-Proton**, no need to rename anything, as the default `proton` file works out of the box.
- For **Valve's Proton** Stable builds:
  - Rename `proton` (from the Sarek-Patches dir) to something else like `proton-ge`.
  - Rename the `proton-valve` file from the Sarek-Patches to `proton`.

### 4. Modify Compatibilitytool.vdf, Version and Proton Files
- Edit `compatibilitytool.vdf`, `version` and `proton` files to reflect the name of your build (replace "Proton-Sarek" with your custom build name).

### 5. Run the Build Script

- Execute the script with superuser privileges:

		sudo /path/to/make.sh

- or for the async build:

		sudo /path/to/make-async.sh

When prompted, provide the path to the Proton build you downloaded or compiled.

### 6. Enjoy Your Custom Proton Build!

- Thats all, enjoy *:)*

## Credits:
This project also uses many 3rd party code and patches, i just do little patches so everything works well with an older DXVK, go support them, they are the ones that do the heavy work

### Valve:
https://github.com/ValveSoftware/Proton && https://github.com/ValveSoftware/wine

First of all, we extend our sincere thanks to Valve for their incredible contributions to the Linux gaming community through the creation of Proton, which has made gaming on Linux more accessible and enjoyable for everyone. As such, we sometimes use Valve's Proton builds as a base for our internal or public releases, or for comparison with those based on Proton-GE.

### GloriousEggroll: 
https://github.com/GloriousEggroll/proton-ge-custom && https://github.com/GloriousEggroll/wine-ge-custom

We would like to extend our gratitude to GloriousEggroll for the creation of both Proton-GE and Wine-GE, which have greatly enhanced gaming on Linux. Most of the time, the releases of this project are based on Proton-GE.

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
