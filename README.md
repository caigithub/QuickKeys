# QUICKK

QUICKK is a Windows keyboard tool inspired by Vim.
It brings mode-based editing to any Windows text field.

## What it does
We have 3 modes : Type, Move, Select.
Source: `src/editInMode/state_mapping.ahk`

the key mapping philosiphy is :
- In move/select mode, the left hand controls operators and the right hand controls movement and selection.
- In any mode, Alt+key shortcuts work at any time to trigger mapping commands.
- In any mode, Double-clicking a pairing key inserts a matching pair.

### Type mode key mapping
Type mode is the normal typing state.
Switch:
- It is the default mode.
- Press Left-Shift to enter type mode.

### Move/Select mode key mapping
Move mode is for cursor movement and quick editing actions.
once you selected something, move will become select.
once you operator something, select will become move.

Switch:
- Press CapsLock to enter it.

#### Move/Select mappings
Source: `src/editInMode/move_mapping.ahk`
| Feature | Action | Key |
| --- | --- | --- |
| Move/Select | Previous/next char | n / . |
| Move/Select | Previous/next word | h / l / w / b |
| Move/Select | Previous/next line | j / k |
| Move/Select | Line start/end | a / ; |
| Move/Select | Move several lines | m / , |
| Move/Select | Select current document | q |
| Move/Select | Select current line | o |
| Move/Select | Enter select mode | t |

#### Operator mappings
Source: `src/editInMode/operator_mapping.ahk`
| Feature | Action | Key |
| --- | --- | --- |
| Operator | Delete line | e |
| Operator | Backspace | r |
| Operator | Delete | d |
| Operator | Cut | x |
| Operator | Copy | c / y |
| Operator | Paste | v / p |

## All-time key mapping

### Pair mappings
Source: `src/editText/pair_mapping.ahk`
| Feature | Key | Action |
| --- | --- | --- |
| Parentheses `()` | Double-click `9` | inserts `()` |
| Parentheses `()` | Double-click `(` | inserts `()` |
| Parentheses `()` | `alt+9` | inserts `()` |
| Parentheses `()` | `alt+0` | adds `)` to the end of the line |
| Brackets `[]`| Double-click `[` | inserts `[]` |
| Braces `{}` | Double-click `{` | inserts `{}` |
| Braces `{}` | Double-click `]` | inserts `{}` to the end of the line |
| Braces `{}` | `alt+[` | inserts `{}` |
| Braces `{}` | `alt+]` | inserts `{}` to the end of the line |
| Quotes `""`  | Double-click `"` | inserts `""` |
| Quotes `''` | Double-click `'` | inserts `''` |

### Word/Line mapping
Source: `src/editText/line_mapping.ahk`
| Feature | Key | Action |
| --- | --- | --- |
| Line | `alt+q` | delete from line begin |
| Word | `alt+w` | delete to word end |
| Word | `alt+e` | delete to word begin |
| Line | `alt+r` | delete from line end |
| Line | `alt+d` | delete to line end |
| Line | `alt+Backspace` | delete from line end |
| Line | `alt+Delete` | delete to word end |
| Line | `alt+y` | copy current line |
| Line | `alt+p` | paste in new line |
| Line | `alt+o` | margin current line |
| Line | `alt+i` | margin current line |
| Line | `alt+k` | insert new line above |
| Line | `alt+j` | insert new line below |

### Programmer mapping
Source: `src/editText/Programmer.ahk`
| Feature | Key | Action |
| --- | --- | --- |
| Line | `alt+,` | append comma at line end |
| Line | `alt+;` | append semicolon at line end |
| Line | `alt+0` | append `)` at line end |

### General Windows mapping
Source: `src/application/windows.ahk`

| Feature | Key | Action |
| --- | --- | --- |
| Windows shortcut | XButton1 | jump to top or bottom of document |

## Code

### Requirements

- Windows
- AutoHotkey 2.0 ( compiler folder contains one )

### Project structure
- src/main.ahk: main entry point

## Notes
- feel free to enhance your own mapping. ^_^
- If you like it, buy me a ☕coffee. ^_^ :
 [$3](https://paypal.me/colinkaopu/3) · [$10](https://paypal.me/colinkaopu/10) · [Custom](https://paypal.me/colinkaopu)
