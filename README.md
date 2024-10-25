# HygoShell

To use HygoShell, follow these steps:

1. Open your terminal.
2. Run the following command to clone the HygoShell repository:

   ```
   git clone https://github.com/huncholane/hygoshell ~/.hygo
   ```

3. Add the following to your shell config, i.e. .bashrc or .zshrc

   ```
   source ~/.hygo/.bashrc
   ```

### ZSH Prompt Elements

| Element      | Description                                                    |
| ------------ | -------------------------------------------------------------- |
| `%n`         | Username                                                       |
| `%m`         | Hostname (up to first `.`)                                     |
| `%M`         | Full hostname                                                  |
| `%~`         | Current working directory (relative to home)                   |
| `%d`         | Current working directory (absolute path)                      |
| `%/`         | Full path of the current working directory                     |
| `%c`         | Trailing portion of the current working directory              |
| `%#`         | `#` if root; `%` otherwise                                     |
| `%h`         | Current history event number                                   |
| `%j`         | Number of jobs currently managed by the shell                  |
| `%T`         | Current time in 24-hour format (HH:MM)                         |
| `%*`         | Current time in 12-hour format (HH:MM AM/PM)                   |
| `%D{format}` | Date with custom format, e.g., `%D{%Y-%m-%d}` for `YYYY-MM-DD` |

### ZSH Color Codes

| Code        | Effect                  |
| ----------- | ----------------------- |
| `%F{color}` | Sets foreground color   |
| `%K{color}` | Sets background color   |
| `%f`        | Resets foreground color |
| `%k`        | Resets background color |

#### Common Colors

| Color   | Code      |
| ------- | --------- |
| Black   | `black`   |
| Red     | `red`     |
| Green   | `green`   |
| Yellow  | `yellow`  |
| Blue    | `blue`    |
| Magenta | `magenta` |
| Cyan    | `cyan`    |
| White   | `white`   |
| Default | `default` |

#### Bright Colors

| Color          | Code            |
| -------------- | --------------- |
| Bright Red     | `brightred`     |
| Bright Green   | `brightgreen`   |
| Bright Yellow  | `brightyellow`  |
| Bright Blue    | `brightblue`    |
| Bright Magenta | `brightmagenta` |
| Bright Cyan    | `brightcyan`    |
| Bright White   | `brightwhite`   |

### Extended ZSH Color Codes (Unnamed)

| ZSH Code | RGB Value      | Description       |
| -------- | -------------- | ----------------- |
| `%F{16}` | `0, 0, 0`      | Very Dark Black   |
| `%F{17}` | `0, 0, 95`     | Very Dark Blue    |
| `%F{18}` | `0, 0, 135`    | Dark Blue         |
| `%F{19}` | `0, 0, 175`    | Deep Blue         |
| `%F{20}` | `0, 0, 215`    | Vivid Blue        |
| `%F{21}` | `0, 0, 255`    | Bright Blue       |
| `%F{22}` | `0, 95, 0`     | Dark Green        |
| `%F{23}` | `0, 95, 95`    | Dark Cyan         |
| `%F{24}` | `0, 95, 135`   | Teal              |
| `%F{25}` | `0, 95, 175`   | Dark Aqua         |
| `%F{26}` | `0, 95, 215`   | Medium Aqua       |
| `%F{27}` | `0, 95, 255`   | Bright Aqua       |
| `%F{28}` | `0, 135, 0`    | Green             |
| `%F{29}` | `0, 135, 95`   | Soft Green-Cyan   |
| `%F{30}` | `0, 135, 135`  | Medium Cyan       |
| `%F{31}` | `0, 135, 175`  | Cool Cyan         |
| `%F{32}` | `0, 135, 215`  | Light Cyan        |
| `%F{33}` | `0, 135, 255`  | Bright Cyan       |
| `%F{34}` | `0, 175, 0`    | Deep Green        |
| `%F{35}` | `0, 175, 95`   | Greenish Cyan     |
| `%F{36}` | `0, 175, 135`  | Medium Turquoise  |
| `%F{37}` | `0, 175, 175`  | Bright Turquoise  |
| `%F{38}` | `0, 175, 215`  | Soft Sky Blue     |
| `%F{39}` | `0, 175, 255`  | Bright Sky Blue   |
| `%F{40}` | `0, 215, 0`    | Vivid Green       |
| `%F{41}` | `0, 215, 95`   | Bright Mint       |
| `%F{42}` | `0, 215, 135`  | Mint Green        |
| `%F{43}` | `0, 215, 175`  | Soft Turquoise    |
| `%F{44}` | `0, 215, 215`  | Bright Turquoise  |
| `%F{45}` | `0, 215, 255`  | Soft Cyan         |
| `%F{46}` | `0, 255, 0`    | Pure Green        |
| `%F{47}` | `0, 255, 95`   | Neon Mint         |
| `%F{48}` | `0, 255, 135`  | Bright Seafoam    |
| `%F{49}` | `0, 255, 175`  | Neon Aqua         |
| `%F{50}` | `0, 255, 215`  | Bright Aqua       |
| `%F{51}` | `0, 255, 255`  | Very Bright Cyan  |
| `%F{52}` | `95, 0, 0`     | Dark Red          |
| `%F{53}` | `95, 0, 95`    | Purple Red        |
| `%F{54}` | `95, 0, 135`   | Plum              |
| `%F{55}` | `95, 0, 175`   | Deep Purple       |
| `%F{56}` | `95, 0, 215`   | Vivid Purple      |
| `%F{57}` | `95, 0, 255`   | Neon Purple       |
| `%F{58}` | `95, 95, 0`    | Dark Olive Green  |
| `%F{59}` | `95, 95, 95`   | Dark Gray         |
| `%F{60}` | `95, 95, 135`  | Slate Gray        |
| `%F{61}` | `95, 95, 175`  | Soft Slate Blue   |
| `%F{62}` | `95, 95, 215`  | Blue Gray         |
| `%F{63}` | `95, 95, 255`  | Cool Gray         |
| `%F{64}` | `95, 135, 0`   | Olive Green       |
| `%F{65}` | `95, 135, 95`  | Light Olive Green |
| `%F{66}` | `95, 135, 135` | Grayish Green     |
| `%F{67}` | `95, 135, 175` | Light Blue-Gray   |
| `%F{68}` | `95, 135, 215` | Soft Periwinkle   |
| `%F{69}` | `95, 135, 255` | Lavender          |
| `%F{70}` | `95, 175, 0`   | Chartreuse Green  |
| `%F{71}` | `95, 175, 95`  | Soft Green        |
| `%F{72}` | `95, 175, 135` | Sea Green         |
| `%F{73}` | `95, 175, 175` | Light Teal        |
| `%F{74}` | `95, 175, 215` | Sky Blue          |
| `%F{75}` | `95, 175, 255` | Light Blue        |
| `%F{76}` | `95, 215, 0`   | Spring Green      |
| `%F{77}` | `95, 215, 95`  | Bright Lime       |
| `%F{78}` | `95, 215, 135` | Soft Green        |
| `%F{79}` | `95, 215, 175` | Light Mint        |
| `%F{80}` | `95, 215, 215` | Light Aqua        |
| `%F{81}` | `95, 215, 255` | Pale Cyan         |
| `%F{82}` | `95, 255, 0`   | Neon Green        |
| `%F{83}` | `95, 255, 95`  | Bright Green      |
| `%F{84}` | `95, 255, 135` | Soft Mint Green   |
| `%F{85}` | `95, 255, 175` | Pastel Mint       |
| `%F{86}` | `95, 255, 215` | Soft Turquoise    |
| `%F{87}` | `95, 255, 255` | Light Cyan        |

### Example Prompts

| Example                          | Code                                                                                                                 |
| -------------------------------- | -------------------------------------------------------------------------------------------------------------------- |
| Simple Colorful Prompt           | `PROMPT="%F{cyan}%n@%m %F{yellow}%~ %F{green}%# %f"`                                                                 |
| Detailed Prompt with Time & Jobs | `PROMPT="%F{blue}%T %F{magenta}%n@%m %F{yellow}%~ %F{red}jobs:%j %F{green}%# %f"`                                    |
| Git Status Prompt                | `autoload -Uz vcs_info; precmd() { vcs_info }; PROMPT="%F{blue}%n@%m %F{yellow}%~ %F{cyan}${vcs_info_msg_0_}%f %# "` |
| Date, Host, and Directory        | `PROMPT="%F{magenta}%D{%Y-%m-%d} %F{cyan}%m %F{yellow}%~ %F{green}%# %f"`                                            |
| Background Color Example         | `PROMPT="%K{black}%F{green}%n@%m%k %F{yellow}%~ %F{blue}%# %f"`                                                      |
