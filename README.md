# NumMC
***
## Description
NumMC is a data pack for Minecraft version 1.17+ that provides mathematical functions for precise calculations with NBT. 

The calculator includes the arithmetic operations: sum, difference, product, quotient, inverse, square root, and inverse square root as well as trigonometric functions like sin, cos, and tan. All operations can calculate up to 9 significant digits of precision, and most ensure at least 8.  

## Installation
After downloading the code, the data pack can be installed in a singleplayer world folder  following [this guide](https://minecraft.fandom.com/wiki/Tutorials/Installing_a_data_pack). 

Once installed and the world is loaded, type `/reload` to load all data pack assets.

The data pack can be disabled in-game before uninstalling using the `/function num:disable` command.

## Usage
### Performing a calculation
The calculator "interface" can be accessed using the command `/data get storage num:io` which will return an NBT compound comtaining `{output: 0.0d, input: 0.0d, print: 0b}`. Modifying the `input` tag using `/data modify storage num:io input set value [value]` followed by running a NumMC operation using `/function num:[func]` will calculate the result of `func` and store it in the `output` tag in the `num:io` storage space.

### Unavailable namespaces
Upon loading the data pack, NumMC creates and utilizes two scoreboard objectives (`nummc.math`, `nummc.const`), a data storage namespace (`num:io`), a marker entity (`tag=nummc, name=NumMC`), and two function/predicate namespaces (`num`, `numop`). **It is advised to avoid using these namespaces elsewhere in your code or deleting any of these assets to prevent unintended calculator behavior.**

For more on how to use the data pack and a detailed list of each function available, see the documentation [here](https://docs.google.com/document/d/1LXTrqe2D9sIrcE8mueH7tqS2T4TEtKjWmaLsyjfVc4w/edit?usp=sharing).

## Credits
Encoding and optimization of each function was completed by Minecraft player Oligo.

## License
GNU GPL v3.0 (see LICENSE.txt)