# trzmc

Timid Robot's Minecraft Java Edition Data Pack


## Overview

I wanted to be able to create new Minecraft worlds without having to grind and
grind grind, all over again, in Survival. This vanilla Java Edition
datapack can be used to create a vendor tent. The merchant tent offers top tier
equipment and access to a variety of resources. I have tried to balance
convenience with economy so that it does not break the game experience.


## Compatibility

- developed on and tested against [Java Edition 1.18.1][javaed11181]
  - compatible with 1.18.*
  - works in both singleplayer and multiplayer

[javaed11181]: https://minecraft.fandom.com/wiki/Java_Edition_1.18.1


## Use

1. **Install**
   1. Download `trzmc.zip` from the most recent [release][releases]
   2. [Tutorials/Installing a data pack – Official Minecraft Wiki][install]
2. **Use**
   1. Within Minecraft, stand at the southwest corner of where you'd like the
      merchant tent built
   2. Run the build tent function:
        ```
        /function trz:build_tent
        ```
      - Please try this in a new world first, so you do not accidentally
        destory something you care about.
      - Function commands require cheats to be enabled. You can temporarily
        enable cheats with "Open to LAN"

[releases]: https://github.com/TimidRobot/trzmc/releases
[install]: https://minecraft.gamepedia.com/Tutorials/Installing_a_data_pack "Tutorials/Installing a data pack – Official Minecraft Wiki"


## Screenshots

- ![Screenshot: Tent Exterior](screenshots/tent_exterior.png)
- ![Screenshot: Tent Left Interior](screenshots/tent_left_interior.png)
- ![Screenshot: Tent Right Interior](screenshots/tent_right_interior.png)


## Notes

Villagers can not be configured to buy data tags (ex. `#minecraft:logs`). See
[[MC-132938] Villagers don't accept datapack tags within "buy" recipes nbt -
Jira](https://bugs.mojang.com/browse/MC-132938).


## Links

### References

- [Official Minecraft Wiki – The Ultimate Resource for Minecraft][mcwiki]
  - [Command Block][mcw-commandblock]
  - [Commands][mcw-commands]
  - [Java Edition data value][mcw-datavalue]
  - **[Chunk format][mcw-chunk]**
  - [Data pack][mcw-datapack]
    - [Function][mcw-function]
    - [Tag][mcw-tag]
  - [Sign][mcw-sign]
    - [Formatting codes][mcw-formatting]
  - [Villager][mcw-villager]
    - [Trading][mcw-trading]
      - [Trading in Minecraft 1.14+ (Image)][trading-image]

[mcwiki]: https://minecraft.gamepedia.com/Minecraft_Wiki "Official Minecraft Wiki – The Ultimate Resource for Minecraft"
[mcw-commandblock]: https://minecraft.gamepedia.com/Command_Block "Command Block – Official Minecraft Wiki"
[mcw-commands]: https://minecraft.gamepedia.com/Commands "Commands – Official Minecraft Wiki"
[mcw-datavalue]: https://minecraft.gamepedia.com/Java_Edition_data_value "Java Edition data value – Official Minecraft Wiki"
[mcw-datapack]: https://minecraft.gamepedia.com/Data_pack "Data pack – Official Minecraft Wiki"
[mcw-chunk]: https://minecraft.gamepedia.com/Chunk_format "Chunk format – Official Minecraft Wiki"
[mcw-function]: https://minecraft.gamepedia.com/Function_(Java_Edition) "Function (Java Edition) – Official Minecraft Wiki"
[mcw-tag]: https://minecraft.gamepedia.com/Tag "Tag – Official Minecraft Wiki"
[mcw-sign]: https://minecraft.gamepedia.com/Sign "Sign – Official Minecraft Wiki"
[mcw-formatting]: https://minecraft.gamepedia.com/Formatting_codes "Formatting codes – Official Minecraft Wiki"
[mcw-villager]: https://minecraft.gamepedia.com/Villager "Villager – Official Minecraft Wiki"
[mcw-trading]: https://minecraft.gamepedia.com/Trading "Trading – Official Minecraft Wiki"
[trading-image]: https://external-preview.redd.it/Mw20bv40laGHOGzbbSIkT38oGntla8xEdE_7r5HO2VY.png?auto=webp&s=189075d790b29f06caae4c14a66871f283c3a883


### Tools

- [vim-mcfunction - Vim Awesome](https://vimawesome.com/plugin/vim-mcfunction)


## License

[![CC BY-SA 4.0 license button][cc-zero-png]][cc-zero]

All rights waived. No warranty express or implied ([`LICENSE`](LICENSE)).
- Code: [Unlicense][unlicense]
- Content: [CC0 1.0 Universal][cc-zero]

[cc-zero-png]: https://licensebuttons.net/p/zero/1.0/88x31.png
[cc-zero]: http://creativecommons.org/publicdomain/zero/1.0/
[unlicense]:https://unlicense.org/ "Unlicense.org » Unlicense Yourself: Set Your Code Free"
