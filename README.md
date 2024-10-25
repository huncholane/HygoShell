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

### Example Prompts

| Example                          | Code                                                                                                                 |
| -------------------------------- | -------------------------------------------------------------------------------------------------------------------- |
| Simple Colorful Prompt           | `PROMPT="%F{cyan}%n@%m %F{yellow}%~ %F{green}%# %f"`                                                                 |
| Detailed Prompt with Time & Jobs | `PROMPT="%F{blue}%T %F{magenta}%n@%m %F{yellow}%~ %F{red}jobs:%j %F{green}%# %f"`                                    |
| Git Status Prompt                | `autoload -Uz vcs_info; precmd() { vcs_info }; PROMPT="%F{blue}%n@%m %F{yellow}%~ %F{cyan}${vcs_info_msg_0_}%f %# "` |
| Date, Host, and Directory        | `PROMPT="%F{magenta}%D{%Y-%m-%d} %F{cyan}%m %F{yellow}%~ %F{green}%# %f"`                                            |
| Background Color Example         | `PROMPT="%K{black}%F{green}%n@%m%k %F{yellow}%~ %F{blue}%# %f"`                                                      |
