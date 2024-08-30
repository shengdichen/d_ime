#!/usr/bin/env dash

SCRIPT_PATH="$(realpath "$(dirname "${0}")")"
cd "${SCRIPT_PATH}" || exit 3

__mkdir() {
    mkdir -p "${HOME}/.config/fcitx5/conf"
    mkdir -p "${HOME}/.config/fcitx"
    mkdir -p "${HOME}/.config/mozc"

    mkdir -p "${HOME}/.local/share/fcitx5/rime"
    mkdir -p "${HOME}/.local/share/fcitx5/themes"
}

__stow() {
    (
        cd .. && stow -R "$(basename "${SCRIPT_PATH}")"
    )
}

__mkdir
__stow
