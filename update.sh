#!/bin/bash

BASE_DIR="$HOME"

DOTFILES_FILE="./dotfiles_path.txt"
EXTRA_FILE="./additional_path.txt"

echo "Source Base: $BASE_DIR"
echo "Target: $(pwd)"
echo "-------------------------"

copy_without_git() {
    local SRC="$1"
    local DEST="$2"

    if [[ -d "$SRC" ]]; then
        mkdir -p "$DEST"
        (
            cd "$SRC" && \
            tar \
              --exclude-vcs \
              --exclude='*/.git' \
              --exclude='*/.git/*' \
              -cf - .
        ) | (
            cd "$DEST" && tar -xf -
        )
    else
        cp -a "$SRC" "$DEST"
    fi
}

# -------------------------
# DOTFILES
# -------------------------
if [[ ! -f "$DOTFILES_FILE" ]]; then
    echo "Error: $DOTFILES_FILE not found."
    exit 1
fi

while IFS= read -r sub_path || [[ -n "$sub_path" ]]; do
    [[ -z "$sub_path" ]] && continue

    sub_path="${sub_path#/}"
    FULL_PATH="$BASE_DIR/$sub_path"

    # 🔥 Extract only folder name (this is the fix)
    folder_name="$(basename "$sub_path")"

    if [[ -e "$FULL_PATH" ]]; then
        echo "Copying: $FULL_PATH → ./dotfiles/$folder_name"
        copy_without_git "$FULL_PATH" "./dotfiles/$folder_name"
    else
        echo "Error: '$FULL_PATH' not found."
    fi
done < "$DOTFILES_FILE"

# -------------------------
# EXTRA FILES
# -------------------------
if [[ ! -f "$EXTRA_FILE" ]]; then
    echo "Error: $EXTRA_FILE not found."
    exit 1
fi

while IFS= read -r sub_path || [[ -n "$sub_path" ]]; do
    [[ -z "$sub_path" ]] && continue

    sub_path="${sub_path#/}"
    FULL_PATH="$BASE_DIR/$sub_path"

    if [[ -e "$FULL_PATH" ]]; then
        echo "Copying: $FULL_PATH → ./$(basename "$sub_path")"
        copy_without_git "$FULL_PATH" "./$(basename "$sub_path")"
    else
        echo "Error: '$FULL_PATH' not found."
    fi
done < "$EXTRA_FILE"

echo "-------------------------"
echo "Bulk copy complete!"