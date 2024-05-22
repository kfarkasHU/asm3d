# ASM3D Project
A fully working 3D rendering engine written in plain x86 Assembly.

## Geting started
```bash

git clone https://github.com/kfarkasHU/asm3d.git
cd asm3d
./run.sh

```

**on mac**
```sh

brew install dosbox-x

```


The repository contains all the required tools to compile and run the source code.
Used 3rd party tools:
* nasm (2-15.05 for DOS)
* DOSBox portable (2.2.1.0)

## Folder structure
```
* _tools		- Tools to run and compile the source code
* src			- Source code
```

## Contribution
### Conventions
#### Summaries
```assembly
;
; <description>
; Inputs
;  <list of the used registers> OR `None`
; Outputs
;  <list of the returned registers> OR `None`
; Usage
;  <example code to call the label with proper setup>
;
```
#### Labels
All the labels should follow the guideline:
`{{folderStructure}}__{{methodName}}`
Where the folder names should be separated by a single underscore (`_`) and the same applies for method names.

Examples:
* `draw_2d__line`
* `draw_2d__pixel`
* `text__print_char`

The labels/methods should return the same state as they get, unless they has return values.

#### Mnemonics

* all the mnemonics should be in new line
* the parameters should be separated by tabs
* the numbers should be in `HEX` format (`0x00h`)
* the mnemonics should be in UPPERCASE
* the registers should be in UPPERCASE 