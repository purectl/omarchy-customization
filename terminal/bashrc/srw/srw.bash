srwfetch() {
    local config_dir="$HOME/.local/share/srw"
    local config_file="$config_dir/srw.toml"
    local ascii_file="$config_dir/ascii.txt"
    local presets_dir="$config_dir/presets"
    local cache_file="$config_dir/.cache"
    local cache_timeout=86400
    
    if [ ! -d "$config_dir" ]; then
        mkdir -p "$config_dir" 2>/dev/null
    fi
    
    if [ ! -d "$presets_dir" ]; then
        mkdir -p "$presets_dir" 2>/dev/null
    fi
    
    if [ ! -f "$presets_dir/purple.toml" ]; then
        cat > "$presets_dir/purple.toml" 2>/dev/null << 'EOF'
[colors]
ascii_r = 96
ascii_g = 56
ascii_b = 165
username_r = 167
username_g = 139
username_b = 250
separator_r = 167
separator_g = 139
separator_b = 255
label_r = 200
label_g = 180
label_b = 255
value_r = 255
value_g = 255
value_b = 255
[animation]
enabled = true
line_delay = 30
[display]
padding = 2
EOF
    fi

    if [ ! -f "$presets_dir/blue.toml" ]; then
        cat > "$presets_dir/blue.toml" 2>/dev/null << 'EOF'
[colors]
ascii_r = 0
ascii_g = 105
ascii_b = 148
username_r = 72
username_g = 202
username_b = 228
separator_r = 0
separator_g = 150
separator_b = 199
label_r = 144
label_g = 224
label_b = 239
value_r = 240
value_g = 248
value_b = 255
[animation]
enabled = true
line_delay = 30
[display]
padding = 2
EOF
    fi

    if [ ! -f "$presets_dir/red.toml" ]; then
        cat > "$presets_dir/red.toml" 2>/dev/null << 'EOF'
[colors]
ascii_r = 178
ascii_g = 34
ascii_b = 34
username_r = 255
username_g = 99
username_b = 71
separator_r = 220
separator_g = 20
separator_b = 60
label_r = 255
label_g = 127
label_b = 80
value_r = 255
value_g = 250
value_b = 240
[animation]
enabled = true
line_delay = 30
[display]
padding = 2
EOF
    fi

    if [ ! -f "$presets_dir/green.toml" ]; then
        cat > "$presets_dir/green.toml" 2>/dev/null << 'EOF'
[colors]
ascii_r = 34
ascii_g = 139
ascii_b = 34
username_r = 144
username_g = 238
username_b = 144
separator_r = 50
separator_g = 205
separator_b = 50
label_r = 152
label_g = 251
label_b = 152
value_r = 240
value_g = 255
value_b = 240
[animation]
enabled = true
line_delay = 30
[display]
padding = 2
EOF
    fi

    if [ ! -f "$presets_dir/yellow.toml" ]; then
        cat > "$presets_dir/yellow.toml" 2>/dev/null << 'EOF'
[colors]
ascii_r = 218
ascii_g = 165
ascii_b = 32
username_r = 255
username_g = 215
username_b = 0
separator_r = 255
separator_g = 193
separator_b = 37
label_r = 255
label_g = 228
label_b = 100
value_r = 255
value_g = 255
value_b = 240
[animation]
enabled = true
line_delay = 30
[display]
padding = 2
EOF
    fi

    if [ ! -f "$presets_dir/pink.toml" ]; then
        cat > "$presets_dir/pink.toml" 2>/dev/null << 'EOF'
[colors]
ascii_r = 219
ascii_g = 39
ascii_b = 119
username_r = 255
username_g = 105
username_b = 180
separator_r = 255
separator_g = 20
separator_b = 147
label_r = 255
label_g = 182
label_b = 193
value_r = 255
value_g = 240
value_b = 245
[animation]
enabled = true
line_delay = 30
[display]
padding = 2
EOF
    fi

    if [ ! -f "$presets_dir/matrix.toml" ]; then
        cat > "$presets_dir/matrix.toml" 2>/dev/null << 'EOF'
[colors]
ascii_r = 0
ascii_g = 200
ascii_b = 0
username_r = 0
username_g = 255
username_b = 0
separator_r = 0
separator_g = 180
separator_b = 0
label_r = 50
label_g = 255
label_b = 50
value_r = 200
value_g = 255
value_b = 200
[animation]
enabled = true
line_delay = 30
[display]
padding = 2
EOF
    fi

    if [ ! -f "$presets_dir/cyberpunk.toml" ]; then
        cat > "$presets_dir/cyberpunk.toml" 2>/dev/null << 'EOF'
[colors]
ascii_r = 255
ascii_g = 0
ascii_b = 255
username_r = 0
username_g = 255
username_b = 255
separator_r = 255
separator_g = 0
separator_b = 255
label_r = 0
label_g = 255
label_b = 255
value_r = 255
value_g = 255
value_b = 0
[animation]
enabled = true
line_delay = 30
[display]
padding = 2
EOF
    fi

    if [ ! -f "$presets_dir/monochrome.toml" ]; then
        cat > "$presets_dir/monochrome.toml" 2>/dev/null << 'EOF'
[colors]
ascii_r = 128
ascii_g = 128
ascii_b = 128
username_r = 200
username_g = 200
username_b = 200
separator_r = 150
separator_g = 150
separator_b = 150
label_r = 180
label_g = 180
label_b = 180
value_r = 255
value_g = 255
value_b = 255
[animation]
enabled = true
line_delay = 30
[display]
padding = 2
EOF
    fi

    if [ ! -f "$presets_dir/sunset.toml" ]; then
        cat > "$presets_dir/sunset.toml" 2>/dev/null << 'EOF'
[colors]
ascii_r = 255
ascii_g = 69
ascii_b = 0
username_r = 255
username_g = 140
username_b = 0
separator_r = 255
separator_g = 99
separator_b = 71
label_r = 255
label_g = 165
label_b = 0
value_r = 255
value_g = 250
value_b = 205
[animation]
enabled = true
line_delay = 30
[display]
padding = 2
EOF
    fi

    if [ ! -f "$presets_dir/dracula.toml" ]; then
        cat > "$presets_dir/dracula.toml" 2>/dev/null << 'EOF'
[colors]
ascii_r = 189
ascii_g = 147
ascii_b = 249
username_r = 255
username_g = 121
username_b = 198
separator_r = 139
separator_g = 233
separator_b = 253
label_r = 80
label_g = 250
label_b = 123
value_r = 248
value_g = 248
value_b = 242
[animation]
enabled = true
line_delay = 30
[display]
padding = 2
EOF
    fi

    if [ ! -f "$presets_dir/nord.toml" ]; then
        cat > "$presets_dir/nord.toml" 2>/dev/null << 'EOF'
[colors]
ascii_r = 136
ascii_g = 192
ascii_b = 208
username_r = 143
username_g = 188
username_b = 187
separator_r = 129
separator_g = 161
separator_b = 193
label_r = 136
label_g = 192
label_b = 208
value_r = 236
value_g = 239
value_b = 244
[animation]
enabled = true
line_delay = 30
[display]
padding = 2
EOF
    fi

    if [ ! -f "$presets_dir/gruvbox.toml" ]; then
        cat > "$presets_dir/gruvbox.toml" 2>/dev/null << 'EOF'
[colors]
ascii_r = 251
ascii_g = 73
ascii_b = 52
username_r = 250
username_g = 189
username_b = 47
separator_r = 131
separator_g = 165
separator_b = 152
label_r = 184
label_g = 187
label_b = 38
value_r = 235
value_g = 219
value_b = 178
[animation]
enabled = true
line_delay = 30
[display]
padding = 2
EOF
    fi

    if [ ! -f "$presets_dir/ocean.toml" ]; then
        cat > "$presets_dir/ocean.toml" 2>/dev/null << 'EOF'
[colors]
ascii_r = 0
ascii_g = 119
ascii_b = 182
username_r = 3
username_g = 169
username_b = 244
separator_r = 0
separator_g = 188
separator_b = 212
label_r = 129
label_g = 212
label_b = 250
value_r = 225
value_g = 245
value_b = 254
[animation]
enabled = true
line_delay = 30
[display]
padding = 2
EOF
    fi

    if [ ! -f "$presets_dir/forest.toml" ]; then
        cat > "$presets_dir/forest.toml" 2>/dev/null << 'EOF'
[colors]
ascii_r = 56
ascii_g = 142
ascii_b = 60
username_r = 102
username_g = 187
username_b = 106
separator_r = 76
separator_g = 175
separator_b = 80
label_r = 129
label_g = 199
label_b = 132
value_r = 232
value_g = 245
value_b = 233
[animation]
enabled = true
line_delay = 30
[display]
padding = 2
EOF
    fi

    if [ ! -f "$presets_dir/lavender.toml" ]; then
        cat > "$presets_dir/lavender.toml" 2>/dev/null << 'EOF'
[colors]
ascii_r = 156
ascii_g = 39
ascii_b = 176
username_r = 186
username_g = 104
username_b = 200
separator_r = 171
separator_g = 71
separator_b = 188
label_r = 206
label_g = 147
label_b = 216
value_r = 243
value_g = 229
value_b = 245
[animation]
enabled = true
line_delay = 30
[display]
padding = 2
EOF
    fi

    if [ ! -f "$presets_dir/amber.toml" ]; then
        cat > "$presets_dir/amber.toml" 2>/dev/null << 'EOF'
[colors]
ascii_r = 255
ascii_g = 111
ascii_b = 0
username_r = 255
username_g = 160
username_b = 0
separator_r = 255
separator_g = 143
separator_b = 0
label_r = 255
label_g = 179
label_b = 0
value_r = 255
value_g = 248
value_b = 225
[animation]
enabled = true
line_delay = 30
[display]
padding = 2
EOF
    fi

    if [ ! -f "$presets_dir/cherry.toml" ]; then
        cat > "$presets_dir/cherry.toml" 2>/dev/null << 'EOF'
[colors]
ascii_r = 194
ascii_g = 24
ascii_b = 91
username_r = 233
username_g = 30
username_b = 99
separator_r = 216
separator_g = 27
separator_b = 96
label_r = 244
label_g = 143
label_b = 177
value_r = 252
value_g = 228
value_b = 236
[animation]
enabled = true
line_delay = 30
[display]
padding = 2
EOF
    fi

    if [ ! -f "$presets_dir/midnight.toml" ]; then
        cat > "$presets_dir/midnight.toml" 2>/dev/null << 'EOF'
[colors]
ascii_r = 25
ascii_g = 25
ascii_b = 112
username_r = 65
username_g = 105
username_b = 225
separator_r = 72
separator_g = 61
separator_b = 139
label_r = 123
label_g = 104
label_b = 238
value_r = 230
value_g = 230
value_b = 250
[animation]
enabled = true
line_delay = 30
[display]
padding = 2
EOF
    fi

    if [ ! -f "$presets_dir/solarized-dark.toml" ]; then
        cat > "$presets_dir/solarized-dark.toml" 2>/dev/null << 'EOF'
[colors]
ascii_r = 38
ascii_g = 139
ascii_b = 210
username_r = 42
username_g = 161
username_b = 152
separator_r = 133
separator_g = 153
separator_b = 0
label_r = 181
label_g = 137
label_b = 0
value_r = 147
value_g = 161
value_b = 161
[animation]
enabled = true
line_delay = 30
[display]
padding = 2
EOF
    fi

    if [ ! -f "$presets_dir/solarized-light.toml" ]; then
        cat > "$presets_dir/solarized-light.toml" 2>/dev/null << 'EOF'
[colors]
ascii_r = 38
ascii_g = 139
ascii_b = 210
username_r = 42
username_g = 161
username_b = 152
separator_r = 133
separator_g = 153
separator_b = 0
label_r = 181
label_g = 137
label_b = 0
value_r = 101
value_g = 123
value_b = 131
[animation]
enabled = true
line_delay = 30
[display]
padding = 2
EOF
    fi

    if [ ! -f "$presets_dir/tokyo-night.toml" ]; then
        cat > "$presets_dir/tokyo-night.toml" 2>/dev/null << 'EOF'
[colors]
ascii_r = 122
ascii_g = 162
ascii_b = 247
username_r = 125
username_g = 207
username_b = 255
separator_r = 187
separator_g = 154
separator_b = 247
label_r = 158
label_g = 206
label_b = 106
value_r = 192
value_g = 202
value_b = 245
[animation]
enabled = true
line_delay = 30
[display]
padding = 2
EOF
    fi

    if [ ! -f "$presets_dir/catppuccin.toml" ]; then
        cat > "$presets_dir/catppuccin.toml" 2>/dev/null << 'EOF'
[colors]
ascii_r = 203
ascii_g = 166
ascii_b = 247
username_r = 245
username_g = 194
username_b = 231
separator_r = 148
separator_g = 226
separator_b = 213
label_r = 249
label_g = 226
label_b = 175
value_r = 205
value_g = 214
value_b = 244
[animation]
enabled = true
line_delay = 30
[display]
padding = 2
EOF
    fi

    if [ ! -f "$presets_dir/monokai.toml" ]; then
        cat > "$presets_dir/monokai.toml" 2>/dev/null << 'EOF'
[colors]
ascii_r = 249
ascii_g = 38
ascii_b = 114
username_r = 102
username_g = 217
username_b = 239
separator_r = 166
separator_g = 226
separator_b = 46
label_r = 253
label_g = 151
label_b = 31
value_r = 248
value_g = 248
value_b = 240
[animation]
enabled = true
line_delay = 30
[display]
padding = 2
EOF
    fi

    if [ ! -f "$presets_dir/pastel.toml" ]; then
        cat > "$presets_dir/pastel.toml" 2>/dev/null << 'EOF'
[colors]
ascii_r = 179
ascii_g = 157
ascii_b = 219
username_r = 255
username_g = 179
username_b = 186
separator_r = 255
separator_g = 223
separator_b = 186
label_r = 186
label_g = 225
label_b = 255
value_r = 255
value_g = 255
value_b = 252
[animation]
enabled = true
line_delay = 30
[display]
padding = 2
EOF
    fi

    if [ ! -f "$presets_dir/neon.toml" ]; then
        cat > "$presets_dir/neon.toml" 2>/dev/null << 'EOF'
[colors]
ascii_r = 255
ascii_g = 16
ascii_b = 240
username_r = 57
username_g = 255
username_b = 20
separator_r = 0
separator_g = 255
separator_b = 255
label_r = 255
label_g = 255
label_b = 0
value_r = 255
value_g = 105
value_b = 180
[animation]
enabled = true
line_delay = 30
[display]
padding = 2
EOF
    fi

    if [ ! -f "$presets_dir/autumn.toml" ]; then
        cat > "$presets_dir/autumn.toml" 2>/dev/null << 'EOF'
[colors]
ascii_r = 204
ascii_g = 85
ascii_b = 0
username_r = 218
username_g = 165
username_b = 32
separator_r = 184
separator_g = 134
separator_b = 11
label_r = 210
label_g = 105
label_b = 30
value_r = 255
value_g = 228
value_b = 181
[animation]
enabled = true
line_delay = 30
[display]
padding = 2
EOF
    fi

    if [ ! -f "$presets_dir/ice.toml" ]; then
        cat > "$presets_dir/ice.toml" 2>/dev/null << 'EOF'
[colors]
ascii_r = 176
ascii_g = 224
ascii_b = 230
username_r = 224
username_g = 255
username_b = 255
separator_r = 175
separator_g = 238
separator_b = 238
label_r = 176
label_g = 196
label_b = 222
value_r = 240
value_g = 248
value_b = 255
[animation]
enabled = true
line_delay = 30
[display]
padding = 2
EOF
    fi

    if [ ! -f "$presets_dir/fire.toml" ]; then
        cat > "$presets_dir/fire.toml" 2>/dev/null << 'EOF'
[colors]
ascii_r = 255
ascii_g = 69
ascii_b = 0
username_r = 255
username_g = 140
username_b = 0
separator_r = 255
separator_g = 99
separator_b = 71
label_r = 255
label_g = 215
label_b = 0
value_r = 255
value_g = 250
value_b = 205
[animation]
enabled = true
line_delay = 30
[display]
padding = 2
EOF
    fi
    
    if [ ! -f "$config_file" ]; then
        cat > "$config_file" 2>/dev/null << 'EOF'

[colors]
ascii_r = 96
ascii_g = 56
ascii_b = 165
username_r = 167
username_g = 139
username_b = 250
separator_r = 167
separator_g = 139
separator_b = 255
label_r = 200
label_g = 180
label_b = 255
value_r = 255
value_g = 255
value_b = 255

[animation]
enabled = true
line_delay = 30

[display]
padding = 2

[information]
show_username = true
show_hostname = true
show_os = true
show_kernel = true
show_uptime = true
show_packages = true
show_shell = true
show_resolution = true
show_terminal = true
show_cpu = true
show_memory = true
show_disk = true
show_temperature = true
show_battery = true

[overrides]
username = ""
hostname = ""

[custom_lines]
line1 = ""
line2 = ""
line3 = ""
EOF
    fi
    
    if [ ! -f "$ascii_file" ]; then
        cat > "$ascii_file" 2>/dev/null << 'EOF'
 ▄▄▄▄▄▄▄▄▄▄▄ 
▐░░░░░░░░░░░▌
▐░█▀▀▀▀▀▀▀▀▀ 
▐░▌          
▐░█▄▄▄▄▄▄▄▄▄ 
▐░░░░░░░░░░░▌
 ▀▀▀▀▀▀▀▀▀█░▌
          ▐░▌
 ▄▄▄▄▄▄▄▄▄█░▌
▐░░░░░░░░░░░▌
 ▀▀▀▀▀▀▀▀▀▀▀ 
EOF
    fi
    
    local use_cache=false
    local cache_data=""
    
    if [ -f "$cache_file" ]; then
        local cache_time=$(stat -c %Y "$cache_file" 2>/dev/null || stat -f %m "$cache_file" 2>/dev/null || echo "0")
        local current_time=$(date +%s)
        local cache_age=$((current_time - cache_time))
        
        if [ "$cache_age" -lt "$cache_timeout" ]; then
            use_cache=true
            cache_data=$(cat "$cache_file" 2>/dev/null)
        fi
    fi
    
    parse_config() {
        local key="$1"
        local default="$2"
        local value=""
        
        if [ -f "$config_file" ]; then
            value=$(grep -E "^${key##*.}[[:space:]]*=" "$config_file" 2>/dev/null | tail -1 | cut -d'=' -f2 | tr -d ' "' 2>/dev/null)
        fi
        
        if [ -z "$value" ]; then
            echo "$default"
        else
            echo "$value"
        fi
    }
    
    local ascii_r=$(parse_config "ascii_r" "96")
    local ascii_g=$(parse_config "ascii_g" "56")
    local ascii_b=$(parse_config "ascii_b" "165")
    
    local username_r=$(parse_config "username_r" "167")
    local username_g=$(parse_config "username_g" "139")
    local username_b=$(parse_config "username_b" "250")
    
    local separator_r=$(parse_config "separator_r" "167")
    local separator_g=$(parse_config "separator_g" "139")
    local separator_b=$(parse_config "separator_b" "255")
    
    local label_r=$(parse_config "label_r" "200")
    local label_g=$(parse_config "label_g" "180")
    local label_b=$(parse_config "label_b" "255")
    
    local value_r=$(parse_config "value_r" "255")
    local value_g=$(parse_config "value_g" "255")
    local value_b=$(parse_config "value_b" "255")
    
    local animate=$(parse_config "enabled" "true")
    local line_delay=$(parse_config "line_delay" "30")
    
    local padding_size=$(parse_config "padding" "2")
    
    local show_username=$(parse_config "show_username" "true")
    local show_hostname=$(parse_config "show_hostname" "true")
    local show_os=$(parse_config "show_os" "true")
    local show_kernel=$(parse_config "show_kernel" "true")
    local show_uptime=$(parse_config "show_uptime" "true")
    local show_packages=$(parse_config "show_packages" "true")
    local show_shell=$(parse_config "show_shell" "true")
    local show_resolution=$(parse_config "show_resolution" "true")
    local show_terminal=$(parse_config "show_terminal" "true")
    local show_cpu=$(parse_config "show_cpu" "true")
    local show_memory=$(parse_config "show_memory" "true")
    local show_disk=$(parse_config "show_disk" "true")
    local show_temperature=$(parse_config "show_temperature" "true")
    local show_battery=$(parse_config "show_battery" "true")
    
    local override_username=$(parse_config "username" "")
    local override_hostname=$(parse_config "hostname" "")
    
    local custom_line1=$(grep -E "^line1[[:space:]]*=" "$config_file" 2>/dev/null | cut -d'=' -f2- | sed 's/^[[:space:]]*"//; s/"[[:space:]]*$//' | xargs)
    local custom_line2=$(grep -E "^line2[[:space:]]*=" "$config_file" 2>/dev/null | cut -d'=' -f2- | sed 's/^[[:space:]]*"//; s/"[[:space:]]*$//' | xargs)
    local custom_line3=$(grep -E "^line3[[:space:]]*=" "$config_file" 2>/dev/null | cut -d'=' -f2- | sed 's/^[[:space:]]*"//; s/"[[:space:]]*$//' | xargs)
    
    local ascii_color="\033[38;2;${ascii_r};${ascii_g};${ascii_b}m"
    local username_color="\033[1;38;2;${username_r};${username_g};${username_b}m"
    local username_color_dim="\033[38;2;${username_r};${username_g};${username_b}m"
    local separator_color="\033[38;2;${separator_r};${separator_g};${separator_b}m"
    local label_color="\033[1;38;2;${label_r};${label_g};${label_b}m"
    local value_color="\033[38;2;${value_r};${value_g};${value_b}m"
    local reset_color="\033[0m"
    
    local ascii_lines=()
    if [ -f "$ascii_file" ]; then
        while IFS= read -r line || [ -n "$line" ]; do
            ascii_lines+=("$line")
        done < "$ascii_file"
    else
        ascii_lines=(
            " ▄▄▄▄▄▄▄▄▄▄▄ "
            "▐░░░░░░░░░░░▌"
            "▐░█▀▀▀▀▀▀▀▀▀ "
            "▐░▌          "
            "▐░█▄▄▄▄▄▄▄▄▄ "
            "▐░░░░░░░░░░░▌"
            " ▀▀▀▀▀▀▀▀▀█░▌"
            "          ▐░▌"
            " ▄▄▄▄▄▄▄▄▄█░▌"
            "▐░░░░░░░░░░░▌"
            " ▀▀▀▀▀▀▀▀▀▀▀ "
        )
    fi
    
    local ascii_width=0
    for line in "${ascii_lines[@]}"; do
        local len=${#line}
        if [ $len -gt $ascii_width ]; then
            ascii_width=$len
        fi
    done
    
    local term_width=$(tput cols 2>/dev/null || echo 80)
    local info_width=60
    local padding=""
    
    if [ $padding_size -gt 0 ]; then
        padding=$(printf '%*s' "$padding_size" "")
    fi
    
    local os_info hostname kernel uptime packages shell resolution terminal
    local cpu_model mem_total mem_used mem_percent disk_info temp_info battery_info
    local username
    
    if [ "$use_cache" = true ] && [ -n "$cache_data" ]; then
        username=$(echo "$cache_data" | grep "^username=" | cut -d'=' -f2-)
        os_info=$(echo "$cache_data" | grep "^os_info=" | cut -d'=' -f2-)
        kernel=$(echo "$cache_data" | grep "^kernel=" | cut -d'=' -f2-)
        hostname=$(echo "$cache_data" | grep "^hostname=" | cut -d'=' -f2-)
        shell=$(echo "$cache_data" | grep "^shell=" | cut -d'=' -f2-)
        resolution=$(echo "$cache_data" | grep "^resolution=" | cut -d'=' -f2-)
        terminal=$(echo "$cache_data" | grep "^terminal=" | cut -d'=' -f2-)
        cpu_model=$(echo "$cache_data" | grep "^cpu_model=" | cut -d'=' -f2-)
        mem_total=$(echo "$cache_data" | grep "^mem_total=" | cut -d'=' -f2-)
    else
        username=$(whoami 2>/dev/null || echo "user")
        os_info=$(uname -o 2>/dev/null || uname -s 2>/dev/null || echo "Unknown")
        kernel=$(uname -r 2>/dev/null || echo "Unknown")
        hostname=$(hostname 2>/dev/null || echo "unknown")
        
        shell=$(basename "$SHELL" 2>/dev/null || echo "unknown")
        resolution=$(xrandr 2>/dev/null | grep "\*" | head -1 | awk '{print $1}' 2>/dev/null || echo "Unknown")
        terminal=$(basename "$(ps -o comm= -p $(ps -o ppid= -p $$ 2>/dev/null) 2>/dev/null)" 2>/dev/null || echo "$TERM")
        
        if command -v lscpu &> /dev/null; then
            cpu_model=$(lscpu 2>/dev/null | grep "Model name:" | cut -d":" -f2 | xargs 2>/dev/null || echo "Unknown")
        elif [ -f /proc/cpuinfo ]; then
            cpu_model=$(grep -m1 "model name" /proc/cpuinfo 2>/dev/null | cut -d":" -f2 | xargs 2>/dev/null || echo "Unknown")
        else
            cpu_model="Unknown"
        fi
        
        if command -v free &> /dev/null; then
            mem_total=$(free -h 2>/dev/null | awk '/^Mem:/ {print $2}' 2>/dev/null || echo "0B")
        else
            mem_total="0B"
        fi
        
        cat > "$cache_file" 2>/dev/null << CACHE_EOF
username=$username
os_info=$os_info
kernel=$kernel
hostname=$hostname
shell=$shell
resolution=$resolution
terminal=$terminal
cpu_model=$cpu_model
mem_total=$mem_total
CACHE_EOF
    fi
    
    [ -n "$override_username" ] && username="$override_username"
    [ -n "$override_hostname" ] && hostname="$override_hostname"
    
    uptime=$(uptime -p 2>/dev/null | sed "s/up //" 2>/dev/null || echo "unknown")
    
    if command -v pacman &> /dev/null; then
        packages=$(pacman -Q 2>/dev/null | wc -l 2>/dev/null || echo "N/A")
    elif command -v dpkg &> /dev/null; then
        packages=$(dpkg -l 2>/dev/null | grep "^ii" | wc -l 2>/dev/null || echo "N/A")
    else
        packages="N/A"
    fi
    
    if command -v df &> /dev/null; then
        disk_info=$(df -h / 2>/dev/null | awk 'NR==2 {print $3 " / " $2 " (" $5 ")"}' 2>/dev/null || echo "Unknown")
    else
        disk_info="Unknown"
    fi
    
    if command -v free &> /dev/null; then
        mem_used=$(free -h 2>/dev/null | awk '/^Mem:/ {print $3}' 2>/dev/null || echo "0B")
        mem_percent=$(free 2>/dev/null | awk '/^Mem:/ {if ($2 > 0) printf "%d", $3/$2 * 100; else print "0"}' 2>/dev/null || echo "0")
    else
        mem_used="0B"
        mem_percent="0"
    fi
    
    if [ -f /sys/class/thermal/thermal_zone0/temp ]; then
        local temp
        temp=$(cat /sys/class/thermal/thermal_zone0/temp 2>/dev/null || echo "0")
        temp=$((temp / 1000))
        temp_info="${temp}°C"
    fi
    
    if [ -f /sys/class/power_supply/BAT0/capacity ]; then
        local battery battery_status battery_icon
        battery=$(cat /sys/class/power_supply/BAT0/capacity 2>/dev/null || echo "0")
        battery_status=$(cat /sys/class/power_supply/BAT0/status 2>/dev/null || echo "Discharging")
        
        if [ "$battery_status" = "Charging" ]; then
            battery_icon="⚡"
        elif [ "$battery" -gt 80 ] 2>/dev/null; then
            battery_icon="🔋"
        elif [ "$battery" -gt 30 ] 2>/dev/null; then
            battery_icon="🪫"
        else
            battery_icon="🪫"
        fi
        
        battery_info="${battery_icon} ${battery}%"
    fi

    if [ $term_width -gt $((ascii_width + info_width + padding_size * 2)) ]; then
        
        local all_info_lines=()
        
        if [ "$show_username" = "true" ] || [ "$show_hostname" = "true" ]; then
            if [ "$show_username" = "true" ] && [ "$show_hostname" = "true" ]; then
                all_info_lines+=("${username_color}${username}${username_color_dim}@${username_color}${hostname}${reset_color}")
            elif [ "$show_username" = "true" ]; then
                all_info_lines+=("${username_color}${username}${reset_color}")
            else
                all_info_lines+=("${username_color}${hostname}${reset_color}")
            fi
            all_info_lines+=("${separator_color}-----------${reset_color}")
        fi
        
        [ "$show_os" = "true" ] && all_info_lines+=("${label_color}OS:${reset_color} ${value_color}$os_info${reset_color}")
        [ "$show_hostname" = "true" ] && [ "$show_username" = "false" ] && all_info_lines+=("${label_color}Host:${reset_color} ${value_color}$hostname${reset_color}")
        [ "$show_kernel" = "true" ] && all_info_lines+=("${label_color}Kernel:${reset_color} ${value_color}$kernel${reset_color}")
        [ "$show_uptime" = "true" ] && all_info_lines+=("${label_color}Uptime:${reset_color} ${value_color}$uptime${reset_color}")
        [ "$show_packages" = "true" ] && all_info_lines+=("${label_color}Packages:${reset_color} ${value_color}$packages${reset_color}")
        [ "$show_shell" = "true" ] && all_info_lines+=("${label_color}Shell:${reset_color} ${value_color}$shell${reset_color}")
        [ "$show_resolution" = "true" ] && [ -n "$resolution" ] && all_info_lines+=("${label_color}Resolution:${reset_color} ${value_color}$resolution${reset_color}")
        [ "$show_terminal" = "true" ] && all_info_lines+=("${label_color}Terminal:${reset_color} ${value_color}$terminal${reset_color}")
        [ "$show_cpu" = "true" ] && all_info_lines+=("${label_color}CPU:${reset_color} ${value_color}$cpu_model${reset_color}")
        [ "$show_memory" = "true" ] && all_info_lines+=("${label_color}Memory:${reset_color} ${value_color}$mem_used / $mem_total ($mem_percent%)${reset_color}")
        [ "$show_disk" = "true" ] && all_info_lines+=("${label_color}Disk:${reset_color} ${value_color}$disk_info${reset_color}")
        [ "$show_temperature" = "true" ] && [ -n "$temp_info" ] && all_info_lines+=("${label_color}Temperature:${reset_color} ${value_color}$temp_info${reset_color}")
        [ "$show_battery" = "true" ] && [ -n "$battery_info" ] && all_info_lines+=("${label_color}Battery:${reset_color} ${value_color}$battery_info${reset_color}")
        
        if [ -n "$custom_line1" ]; then
            local custom_label1=$(echo "$custom_line1" | cut -d'=' -f1 | xargs)
            local custom_value1=$(echo "$custom_line1" | cut -d'=' -f2- | xargs)
            [ -n "$custom_label1" ] && [ -n "$custom_value1" ] && all_info_lines+=("${label_color}${custom_label1}:${reset_color} ${value_color}${custom_value1}${reset_color}")
        fi
        
        if [ -n "$custom_line2" ]; then
            local custom_label2=$(echo "$custom_line2" | cut -d'=' -f1 | xargs)
            local custom_value2=$(echo "$custom_line2" | cut -d'=' -f2- | xargs)
            [ -n "$custom_label2" ] && [ -n "$custom_value2" ] && all_info_lines+=("${label_color}${custom_label2}:${reset_color} ${value_color}${custom_value2}${reset_color}")
        fi
        
        if [ -n "$custom_line3" ]; then
            local custom_label3=$(echo "$custom_line3" | cut -d'=' -f1 | xargs)
            local custom_value3=$(echo "$custom_line3" | cut -d'=' -f2- | xargs)
            [ -n "$custom_label3" ] && [ -n "$custom_value3" ] && all_info_lines+=("${label_color}${custom_label3}:${reset_color} ${value_color}${custom_value3}${reset_color}")
        fi
        
        local ascii_height=${#ascii_lines[@]}
        local info_height=${#all_info_lines[@]}
        local max_height=$((ascii_height > info_height ? ascii_height : info_height))
        
        echo -ne "\033[?25l"
        
        for i in $(seq 0 $((max_height - 1))); do
            if [ $i -lt $ascii_height ]; then
                printf "%b%s%-*s%b" "${ascii_color}" "${padding}" "$ascii_width" "${ascii_lines[$i]}" "${reset_color}"
            else
                printf "%s%*s" "${padding}" "$ascii_width" ""
            fi
            
            printf "  "
            
            if [ $i -lt $info_height ]; then
                printf "%b" "${all_info_lines[$i]}"
            fi
            
            printf "\n"
            
            if [ "$animate" = "true" ] && [ "$line_delay" -gt 0 ]; then
                if command -v bc &> /dev/null; then
                    local sleep_time=$(echo "scale=3; $line_delay / 1000" | bc 2>/dev/null)
                    sleep "$sleep_time" 2>/dev/null || sleep 0.03
                else
                    sleep 0.03
                fi
            fi
        done
        
        echo -ne "\033[?25h"
        
    else
        for line in "${ascii_lines[@]}"; do
            printf "%b%s%s%b\n" "${ascii_color}" "${padding}" "${line}" "${reset_color}"
        done
        
        local stacked_lines=()
        
        if [ "$show_username" = "true" ] || [ "$show_hostname" = "true" ]; then
            if [ "$show_username" = "true" ] && [ "$show_hostname" = "true" ]; then
                stacked_lines+=("${padding}${username_color}${username}${username_color_dim}@${username_color}${hostname}${reset_color}")
            elif [ "$show_username" = "true" ]; then
                stacked_lines+=("${padding}${username_color}${username}${reset_color}")
            else
                stacked_lines+=("${padding}${username_color}${hostname}${reset_color}")
            fi
            stacked_lines+=("${padding}${separator_color}-----------${reset_color}")
        fi
        
        [ "$show_os" = "true" ] && stacked_lines+=("${padding}${label_color}OS:${reset_color} ${value_color}$os_info${reset_color}")
        [ "$show_hostname" = "true" ] && [ "$show_username" = "false" ] && stacked_lines+=("${padding}${label_color}Host:${reset_color} ${value_color}$hostname${reset_color}")
        [ "$show_kernel" = "true" ] && stacked_lines+=("${padding}${label_color}Kernel:${reset_color} ${value_color}$kernel${reset_color}")
        [ "$show_uptime" = "true" ] && stacked_lines+=("${padding}${label_color}Uptime:${reset_color} ${value_color}$uptime${reset_color}")
        [ "$show_packages" = "true" ] && stacked_lines+=("${padding}${label_color}Packages:${reset_color} ${value_color}$packages${reset_color}")
        [ "$show_shell" = "true" ] && stacked_lines+=("${padding}${label_color}Shell:${reset_color} ${value_color}$shell${reset_color}")
        [ "$show_resolution" = "true" ] && [ -n "$resolution" ] && stacked_lines+=("${padding}${label_color}Resolution:${reset_color} ${value_color}$resolution${reset_color}")
        [ "$show_terminal" = "true" ] && stacked_lines+=("${padding}${label_color}Terminal:${reset_color} ${value_color}$terminal${reset_color}")
        [ "$show_cpu" = "true" ] && stacked_lines+=("${padding}${label_color}CPU:${reset_color} ${value_color}$cpu_model${reset_color}")
        [ "$show_memory" = "true" ] && stacked_lines+=("${padding}${label_color}Memory:${reset_color} ${value_color}$mem_used / $mem_total ($mem_percent%)${reset_color}")
        [ "$show_disk" = "true" ] && stacked_lines+=("${padding}${label_color}Disk:${reset_color} ${value_color}$disk_info${reset_color}")
        [ "$show_temperature" = "true" ] && [ -n "$temp_info" ] && stacked_lines+=("${padding}${label_color}Temperature:${reset_color} ${value_color}$temp_info${reset_color}")
        [ "$show_battery" = "true" ] && [ -n "$battery_info" ] && stacked_lines+=("${padding}${label_color}Battery:${reset_color} ${value_color}$battery_info${reset_color}")
        
        if [ -n "$custom_line1" ]; then
            local custom_label1=$(echo "$custom_line1" | cut -d'=' -f1 | xargs)
            local custom_value1=$(echo "$custom_line1" | cut -d'=' -f2- | xargs)
            [ -n "$custom_label1" ] && [ -n "$custom_value1" ] && stacked_lines+=("${padding}${label_color}${custom_label1}:${reset_color} ${value_color}${custom_value1}${reset_color}")
        fi
        
        if [ -n "$custom_line2" ]; then
            local custom_label2=$(echo "$custom_line2" | cut -d'=' -f1 | xargs)
            local custom_value2=$(echo "$custom_line2" | cut -d'=' -f2- | xargs)
            [ -n "$custom_label2" ] && [ -n "$custom_value2" ] && stacked_lines+=("${padding}${label_color}${custom_label2}:${reset_color} ${value_color}${custom_value2}${reset_color}")
        fi
        
        if [ -n "$custom_line3" ]; then
            local custom_label3=$(echo "$custom_line3" | cut -d'=' -f1 | xargs)
            local custom_value3=$(echo "$custom_line3" | cut -d'=' -f2- | xargs)
            [ -n "$custom_label3" ] && [ -n "$custom_value3" ] && stacked_lines+=("${padding}${label_color}${custom_label3}:${reset_color} ${value_color}${custom_value3}${reset_color}")
        fi
        
        for line in "${stacked_lines[@]}"; do
            echo -e "$line"
            
            if [ "$animate" = "true" ] && [ "$line_delay" -gt 0 ]; then
                if command -v bc &> /dev/null; then
                    local sleep_time=$(echo "scale=3; $line_delay / 1000" | bc 2>/dev/null)
                    sleep "$sleep_time" 2>/dev/null || sleep 0.03
                else
                    sleep 0.03
                fi
            fi
        done
    fi
}


srw() {
    local CONFIG_DIR="$HOME/.local/share/srw"
    local PRESETS_DIR="$CONFIG_DIR/presets"
    local CONFIG_FILE="$CONFIG_DIR/srw.toml"
    local CACHE_FILE="$CONFIG_DIR/.cache"
    
    mkdir -p "$PRESETS_DIR" 2>/dev/null
    
    case "$1" in
        theme)
            case "$2" in
                list)
                    echo "Available themes:"
                    echo ""
                    if [ -d "$PRESETS_DIR" ] && [ "$(ls -A "$PRESETS_DIR" 2>/dev/null)" ]; then
                        for theme in "$PRESETS_DIR"/*.toml; do
                            if [ -f "$theme" ]; then
                                local theme_name=$(basename "$theme" .toml)
                                echo "  • $theme_name"
                            fi
                        done
                    else
                        echo "  No themes found in $PRESETS_DIR"
                    fi
                    echo ""
                    echo "Usage: srw theme <theme-name>"
                    ;;
                "")
                    echo "Usage: srw theme <theme-name>"
                    echo "       srw theme list"
                    echo ""
                    echo "Example: srw theme blue"
                    ;;
                *)
                    local theme_name="$2"
                    local theme_file="$PRESETS_DIR/${theme_name}.toml"
                    
                    if [ ! -f "$theme_file" ]; then
                        echo "Error: Theme '$theme_name' not found."
                        echo ""
                        echo "Available themes:"
                        for theme in "$PRESETS_DIR"/*.toml; do
                            if [ -f "$theme" ]; then
                                basename "$theme" .toml | sed 's/^/  - /'
                            fi
                        done
                        return 1
                    fi
                    
                    if [ -f "$CONFIG_FILE" ]; then
                        cp "$CONFIG_FILE" "$CONFIG_FILE.backup" 2>/dev/null
                    fi
                    
                    cp "$theme_file" "$CONFIG_FILE" 2>/dev/null
                    
                    clear
                    srwfetch
                    ;;
            esac
            ;;
        
        create)
            local new_theme="$2"
            if [ -z "$new_theme" ]; then
                echo "Usage: srw create <theme-name>"
                echo ""
                echo "This will create a new theme template in:"
                echo "$PRESETS_DIR"
                return 1
            fi
            
            local new_file="$PRESETS_DIR/${new_theme}.toml"
            
            if [ -f "$new_file" ]; then
                echo "Error: Theme '$new_theme' already exists."
                echo "Edit it at: $new_file"
                return 1
            fi
            
            cat > "$new_file" << 'THEMEOF'

[colors]
ascii_r = 100
ascii_g = 100
ascii_b = 200

username_r = 150
username_g = 150
username_b = 255

separator_r = 120
separator_g = 120
separator_b = 220

label_r = 180
label_g = 180
label_b = 255

value_r = 255
value_g = 255
value_b = 255

[animation]
enabled = true
line_delay = 30

[display]
padding = 2
THEMEOF
            
            echo "✓ Created new theme: $new_theme"
            echo ""
            echo "Edit your theme at:"
            echo "$new_file"
            echo ""
            echo "Apply it with: srw theme $new_theme"
            
            if command -v nano &> /dev/null; then
                read -p "Open in nano now? [y/N] " -n 1 -r
                echo
                if [[ $REPLY =~ ^[Yy]$ ]]; then
                    nano "$new_file"
                fi
            elif command -v vim &> /dev/null; then
                read -p "Open in vim now? [y/N] " -n 1 -r
                echo
                if [[ $REPLY =~ ^[Yy]$ ]]; then
                    vim "$new_file"
                fi
            fi
            ;;
        
        edit)
            local theme_name="$2"
            if [ -z "$theme_name" ]; then
                echo "Usage: srw edit <theme-name>"
                echo ""
                echo "Available themes:"
                for theme in "$PRESETS_DIR"/*.toml; do
                    if [ -f "$theme" ]; then
                        basename "$theme" .toml | sed 's/^/  - /'
                    fi
                done
                return 1
            fi
            
            local theme_file="$PRESETS_DIR/${theme_name}.toml"
            
            if [ ! -f "$theme_file" ]; then
                echo "Error: Theme '$theme_name' not found."
                return 1
            fi
            
            if command -v "${EDITOR:-nano}" &> /dev/null; then
                "${EDITOR:-nano}" "$theme_file"
            elif command -v nano &> /dev/null; then
                nano "$theme_file"
            elif command -v vim &> /dev/null; then
                vim "$theme_file"
            elif command -v vi &> /dev/null; then
                vi "$theme_file"
            else
                echo "No text editor found. Edit manually:"
                echo "$theme_file"
            fi
            ;;
        
        delete)
            local theme_name="$2"
            if [ -z "$theme_name" ]; then
                echo "Usage: srw delete <theme-name>"
                return 1
            fi
            
            local theme_file="$PRESETS_DIR/${theme_name}.toml"
            
            if [ ! -f "$theme_file" ]; then
                echo "Error: Theme '$theme_name' not found."
                return 1
            fi
            
            read -p "Delete theme '$theme_name'? [y/N] " -n 1 -r
            echo
            if [[ $REPLY =~ ^[Yy]$ ]]; then
                rm "$theme_file"
                echo "✓ Theme '$theme_name' deleted."
            else
                echo "Cancelled."
            fi
            ;;
        
        cache)
            case "$2" in
                clear)
                    if [ -f "$CACHE_FILE" ]; then
                        rm "$CACHE_FILE"
                        echo "✓ Cache cleared."
                    else
                        echo "No cache file found."
                    fi
                    ;;
                show)
                    if [ -f "$CACHE_FILE" ]; then
                        echo "Cache file contents:"
                        echo "───────────────────"
                        cat "$CACHE_FILE"
                        echo ""
                        local cache_time=$(stat -c %Y "$CACHE_FILE" 2>/dev/null || stat -f %m "$CACHE_FILE" 2>/dev/null || echo "0")
                        local current_time=$(date +%s)
                        local cache_age=$((current_time - cache_time))
                        echo "Cache age: ${cache_age}s (expires at 86400s / 24 hours)"
                    else
                        echo "No cache file found."
                    fi
                    ;;
                *)
                    echo "Usage: srw cache clear    - Clear the cache"
                    echo "       srw cache show     - Show cache contents"
                    ;;
            esac
            ;;
        
        show)
            if [ -f "$CONFIG_FILE" ]; then
                echo "Current configuration:"
                echo "─────────────────────"
                cat "$CONFIG_FILE"
            else
                echo "No configuration file found."
                echo "Run 'srwfetch' to generate default config."
            fi
            ;;
        
        ascii)
            case "$2" in
                edit)
                    local ascii_file="$CONFIG_DIR/ascii.txt"
                    if [ ! -f "$ascii_file" ]; then
                        echo "ASCII file not found. Creating default..."
                        srwfetch >/dev/null 2>&1
                    fi
                    
                    if command -v "${EDITOR:-nano}" &> /dev/null; then
                        "${EDITOR:-nano}" "$ascii_file"
                    elif command -v nano &> /dev/null; then
                        nano "$ascii_file"
                    elif command -v vim &> /dev/null; then
                        vim "$ascii_file"
                    else
                        echo "No text editor found. Edit manually:"
                        echo "$ascii_file"
                    fi
                    ;;
                show)
                    local ascii_file="$CONFIG_DIR/ascii.txt"
                    if [ -f "$ascii_file" ]; then
                        echo "Current ASCII art:"
                        echo "─────────────────"
                        cat "$ascii_file"
                    else
                        echo "ASCII file not found."
                    fi
                    ;;
                *)
                    echo "Usage: srw ascii edit     - Edit ASCII art"
                    echo "       srw ascii show     - Show current ASCII art"
                    ;;
            esac
            ;;
        
        help|--help|-h|"")
            echo "Usage: srw <command> [options]"
            echo ""
            echo "Theme Management:"
            echo "  srw theme <name>          Apply a theme"
            echo "  srw theme list            List all available themes"
            echo "  srw create <name>         Create a new custom theme"
            echo "  srw edit <name>           Edit an existing theme"
            echo "  srw delete <name>         Delete a theme"
            echo ""
            echo "ASCII Art:"
            echo "  srw ascii edit            Edit your ASCII art"
            echo "  srw ascii show            Show current ASCII art"
            echo ""
            echo "Cache Management:"
            echo "  srw cache clear           Clear system info cache"
            echo "  srw cache show            Show cache contents and age"
            echo ""
            echo "Configuration:"
            echo "  srw show                  Show current configuration"
            echo ""
            echo "Examples:"
            echo "  srw theme blue            Switch to blue theme"
            echo "  srw theme list            List all themes"
            echo "  srw create mytheme        Create 'mytheme' template"
            echo "  srw edit mytheme          Edit 'mytheme'"
            echo "  srw ascii edit            Change your ASCII art"
            echo "  srw cache clear           Clear cached system info"
            echo ""
            echo "Files are stored in: $CONFIG_DIR"
            echo ""
            echo "Cache Info:"
            echo "  System info is cached for 24 hours to improve load times."
            echo "  Dynamic values are always fresh: uptime, memory usage, packages,"
            echo "  disk usage, battery, and temperature."
            ;;
        
        *)
            echo "Unknown command: $1"
            echo "Run 'srw help' for usage information."
            return 1
            ;;
    esac
}
