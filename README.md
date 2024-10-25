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

### Curated ZSH Color Codes for a Wider Range

| ZSH Code  | RGB Value       | Description        |
| --------- | --------------- | ------------------ |
| `%F{187}` | `215, 215, 175` | Beige              |
| `%F{21}`  | `0, 0, 255`     | Blue               |
| `%F{27}`  | `0, 95, 255`    | Blue (Bright)      |
| `%F{19}`  | `0, 0, 175`     | Blue (Deep)        |
| `%F{51}`  | `0, 255, 255`   | Cyan (Very Bright) |
| `%F{30}`  | `0, 135, 135`   | Cyan (Medium)      |
| `%F{154}` | `175, 215, 0`   | Chartreuse         |
| `%F{180}` | `215, 175, 215` | Lavender           |
| `%F{131}` | `175, 95, 135`  | Mauve              |
| `%F{201}` | `255, 0, 255`   | Magenta (Bright)   |
| `%F{47}`  | `0, 255, 95`    | Mint (Neon)        |
| `%F{214}` | `255, 175, 0`   | Orange (Light)     |
| `%F{202}` | `255, 95, 0`    | Orange             |
| `%F{166}` | `215, 135, 0`   | Orange (Dark)      |
| `%F{189}` | `215, 215, 255` | Off-White          |
| `%F{93}`  | `135, 95, 255`  | Periwinkle         |
| `%F{125}` | `135, 0, 95`    | Plum (Dark)        |
| `%F{129}` | `175, 95, 255`  | Purple             |
| `%F{164}` | `215, 0, 95`    | Rose               |
| `%F{203}` | `255, 85, 85`   | Salmon             |
| `%F{48}`  | `0, 255, 135`   | Seafoam (Bright)   |
| `%F{39}`  | `0, 175, 255`   | Sky Blue (Bright)  |
| `%F{132}` | `175, 0, 135`   | Violet (Deep)      |
| `%F{231}` | `255, 255, 255` | White              |
| `%F{46}`  | `0, 255, 0`     | Green (Bright)     |
| `%F{34}`  | `0, 175, 0`     | Green (Dark)       |
| `%F{240}` | `95, 95, 95`    | Gray (Dark)        |
| `%F{245}` | `135, 135, 135` | Gray               |
| `%F{250}` | `175, 175, 175` | Gray (Light)       |
| `%F{102}` | `95, 135, 0`    | Olive              |
| `%F{52}`  | `95, 0, 0`      | Red (Dark)         |
| `%F{88}`  | `135, 0, 0`     | Red (Deep)         |
| `%F{196}` | `255, 0, 0`     | Red (Bright)       |
| `%F{220}` | `255, 215, 0`   | Yellow-Orange      |
| `%F{226}` | `255, 255, 0`   | Yellow (Bright)    |
| `%F{184}` | `215, 215, 0`   | Yellow (Soft)      |
| `%F{16}`  | `0, 0, 0`       | Black (Very Dark)  |

### Example Prompts

| Example                          | Code                                                                                                                 |
| -------------------------------- | -------------------------------------------------------------------------------------------------------------------- |
| Simple Colorful Prompt           | `PROMPT="%F{cyan}%n@%m %F{yellow}%~ %F{green}%# %f"`                                                                 |
| Detailed Prompt with Time & Jobs | `PROMPT="%F{blue}%T %F{magenta}%n@%m %F{yellow}%~ %F{red}jobs:%j %F{green}%# %f"`                                    |
| Git Status Prompt                | `autoload -Uz vcs_info; precmd() { vcs_info }; PROMPT="%F{blue}%n@%m %F{yellow}%~ %F{cyan}${vcs_info_msg_0_}%f %# "` |
| Date, Host, and Directory        | `PROMPT="%F{magenta}%D{%Y-%m-%d} %F{cyan}%m %F{yellow}%~ %F{green}%# %f"`                                            |
| Background Color Example         | `PROMPT="%K{black}%F{green}%n@%m%k %F{yellow}%~ %F{blue}%# %f"`                                                      |
