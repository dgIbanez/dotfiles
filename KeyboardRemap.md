from man xkeyboard-config there's the caps:escape_shifted_capslock option which:

Makes Caps Lock an additional Esc, but Shift + Caps Lock is the regular Caps Lock

You can get the code for that option and tweak it slightly to send Control instead of Escape. The option is located in the `/usr/share/X11/xkb/symbols/capslock` file, under the section escape_shifted_capslock. It looks like this:

```bash
hidden partial modifier_keys
xkb_symbols "escape_shifted_capslock" {
    key <CAPS> {
        type[Group1] = "TWO_LEVEL",
        symbols[Group1] = [ Escape, Caps_Lock ],
        actions[Group1] = [ NoAction(), LockMods(modifiers = Lock) ]
    };
};
```

```bash
Edit the key <CAPS> mapping like so:

    key<CAPS> {
        type[Group1] = "TWO_LEVEL",
        symbols[Group1] = [ Control_L, Caps_Lock ],
        actions[Group1] = [ SetMods(mods = Control), LockMods(mods = Lock) ]
    };
```
