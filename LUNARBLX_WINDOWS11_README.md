# Fluent Windows 11 Dark Edition — source fork (stage 1)

Based on the original Fluent-master.zip provided by the user. Retains original library public API. The changes are confined to look-and-feel modules: theme palette, tab alignment, title bar, Acrylic, card/control corner radius and notification spacing.

## Changes
- New theme `Win11Dark` uses all original Dark theme keys and changes only palette values.
- Tab icon remains the actual Fluent icon and is 12 px from left; text starts at 38 px.
- Windows 11-like rounded background (16px) and control cards (10–12px).
- Original `Fluent:Notify`, `AddToggle`, `AddDropdown`, `Multi`, `SetValue`, `OnChanged`, `AddInput`, `AddSlider`, `AddParagraph`, etc., are unmodified.

## Development
Use `Theme = "Win11Dark"` in `Fluent:CreateWindow`.
Source here is Rojo/Roblox ModuleScript structured; it is **not** directly runnable in Volt as a folder. To create a Volt-ready standalone `main.lua`, run the original repo's toolchain (`rojo`, `lune`, `darklua`), according to `package.json` / `aftman.toml`, then test.

No compiled Volt build or Roblox runtime verification is claimed. Do not swap the current LUNARBLX production loader yet.
