runalias() {
    # Capture the optional search term
    local search_term="$1"

    # List all aliases, filter with fzf, and extract the alias name
    local selected_alias=$(alias | fzf --query="$search_term" | awk -F= '{print $1}')

    if [ -n "$selected_alias" ]; then
        # Extract the alias command
        local alias_command=$(alias "$selected_alias" | sed -E "s/^$selected_alias='//;s/'$//")

        echo -e "Executing: $selected_alias\n"

        # Execute the command
        eval "$alias_command"
    fi
}