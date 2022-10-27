# ASM3D Project
A fully working 3D rendering engine written in plain x86 Assembly.

## Get Started
```bash
	git clone https://github.com/kfarkasHU/asm3d.git
	cd asm3d
	./run.sh
```

The repository contains all the required tools to compile and run the source code.
Used 3rd party tools:
* nasm (2-15.05 for DOS)
* DOSBox portable (2.2.1.0)

## Folder structure
```
* _build		- Old build scripts
* _tools		- Tools to run and compile the source code
* dist			- The dist folder was used in the older versions. Main ouput of the build process.
* dist_compile	- The dist_compile folder was used in the older versions. This folder was the output of the compilation (nasm) process.
* dist_link		- The dist_link folder was used in the older versions. This folder was the output of the linking (golink) process.
```

## Contribution