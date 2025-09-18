#!/bin/bash

# Base repository
BASE_REPO="attogram/base"
BASE_URL="https://raw.githubusercontent.com/$BASE_REPO/main"
API_URL="https://api.github.com/repos/$BASE_REPO/contents"

# Function to get the list of files from the repo
get_files() {
    local path_to_process="$1"
    local paths_to_visit=("$path_to_process")
    local all_files=()

    while [ ${#paths_to_visit[@]} -gt 0 ]; do
        local current_path="${paths_to_visit[0]}"
        paths_to_visit=("${paths_to_visit[@]:1}")

        local content=$(curl -sS "$API_URL/$current_path")
        local files=$(echo "$content" | jq -r '.[] | .path')
        local types=$(echo "$content" | jq -r '.[] | .type')

        mapfile -t files_array <<< "$files"
        mapfile -t types_array <<< "$types"

        for i in "${!files_array[@]}"; do
            if [[ "${types_array[$i]}" == "dir" ]]; then
                paths_to_visit+=("${files_array[$i]}")
            else
                all_files+=("${files_array[$i]}")
            fi
        done
    done
    echo "${all_files[@]}"
}

# Get all files recursively
FILES=($(get_files ""))

# Function to download a file
download_file() {
    local file=$1
    local url="$BASE_URL/$file"
    local dir=$(dirname "$file")

    if [ ! -d "$dir" ]; then
        mkdir -p "$dir"
    fi

    echo "Downloading $file"
    curl -sS --fail -o "$file" "$url"
    if [ $? -ne 0 ]; then
        echo "Failed to download $file"
        exit 1
    fi
}

# Function to replace placeholders
replace_placeholders() {
    local repo_name=$(git remote get-url origin 2>/dev/null | sed -e 's/.*github.com\///' -e 's/\.git$//')
    if [ -z "$repo_name" ]; then
        echo "Could not determine repository name. Skipping placeholder replacement."
        return
    fi

    echo "Replacing placeholders with $repo_name"
    for file in "${FILES[@]}"; do
        if [ -f "$file" ]; then
            sed -i "s|attogram/base|$repo_name|g" "$file"
        fi
    done
}

# Function to install npm dependencies
install_dependencies() {
    if [ -f "package.json" ]; then
        echo "Installing npm dependencies..."
        npm install
    fi
}

# Function to run verification steps
run_verification() {
    echo "Running verification..."
    npx prettier --write .
}

# Download all files
for file in "${FILES[@]}"; do
    download_file "$file"
done

replace_placeholders

install_dependencies

run_verification

echo "All files downloaded, placeholders replaced, dependencies installed, and verification complete."
