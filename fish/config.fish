# ~/.config/fish/config.fish


# ─────────────────────────────────────
# Environment
# ─────────────────────────────────────

set -gx EDITOR nvim
set -gx VISUAL nvim
set -gx BROWSER firefox

# Пользовательские бинарники
fish_add_path ~/.local/bin

# ─────────────────────────────────────
# Interactive shell
# ─────────────────────────────────────

if status is-interactive

    # Убираем стандартное приветствие Fish
    set -g fish_greeting

    # Emacs-like bindings — дефолт Fish.
    # Можно вообще удалить эту строку.
    set -g fish_key_bindings fish_default_key_bindings


    # ─────────────────────────────────
    # Abbreviations
    # ─────────────────────────────────

    # В Fish я предпочитаю abbr вместо alias:
    # вводишь "gco", нажимаешь Space,
    # и прямо в строке появляется "git checkout".

    abbr -a -g g   git
    abbr -a -g ga  'git add'
    abbr -a -g gaa 'git add --all'
    abbr -a -g gc  'git commit'
    abbr -a -g gcm 'git commit -m'
    abbr -a -g gco 'git checkout'
    abbr -a -g gb  'git branch'
    abbr -a -g gd  'git diff'
    abbr -a -g gl  'git log --oneline --graph --decorate'
    abbr -a -g gs  'git status'

    abbr -a -g c clear

    # systemd
    abbr -a -g sc  systemctl
    abbr -a -g scu 'systemctl --user'

    # pacman
    abbr -a -g pac 'sudo pacman'
    abbr -a -g pS  'sudo pacman -S'
    abbr -a -g pSs 'pacman -Ss'
    abbr -a -g pSyu 'sudo pacman -Syu'
    abbr -a -g pRns 'sudo pacman -Rns'

    # ls → eza
    abbr -a -g ls  'eza --icons=auto'
    abbr -a -g ll  'eza -lah --icons=auto --group-directories-first'
    abbr -a -g la  'eza -a --icons=auto'
    abbr -a -g lt  'eza --tree --level=2 --icons=auto'

    # cat → bat
    abbr -a -g cat 'bat --paging=never'

    # zoxide
    zoxide init fish | source


end

if status is-interactive
    starship init fish | source
end
