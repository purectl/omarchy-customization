#!/bin/bash

set -e  

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' 

print_success() {
    echo -e "${GREEN}✓${NC} $1"
}

print_info() {
    echo -e "${BLUE}ℹ${NC} $1"
}

print_warning() {
    echo -e "${YELLOW}⚠${NC} $1"
}

print_error() {
    echo -e "${RED}✗${NC} $1"
}

SRW_GITHUB_URL="https://raw.githubusercontent.com/xsorroww/omarchy-customization/refs/heads/main/terminal/bashrc/srw/srw.bash"

BASHRC_SNIPPET='# SRW 
# https://github.com/xsorroww/omarchy-customization
if [ -f "$HOME/.local/bin/srw.bash" ]; then
    source "$HOME/.local/bin/srw.bash"
    
    # Uncomment the next line to enable auto-display on clear
    #alias clear='"'"'command clear && srwfetch'"'"'
    
    # Uncomment the next line to auto-display on terminal start
    #srwfetch
fi'

check_requirements() {
    local missing=()
    
    if ! command -v curl &> /dev/null && ! command -v wget &> /dev/null; then
        missing+=("curl or wget")
    fi
    
    if [ ${#missing[@]} -gt 0 ]; then
        print_error "Missing required packages: ${missing[*]}"
        echo "Please install them and try again:"
        echo "  Ubuntu/Debian: sudo apt install curl"
        echo "  Fedora/RHEL: sudo dnf install curl"
        echo "  Arch: sudo pacman -S curl"
        exit 1
    fi
}

download_file() {
    local url="$1"
    local output="$2"
    
    print_info "Downloading from: $url"
    
    if command -v curl &> /dev/null; then
        if ! curl -sSL --fail "$url" -o "$output"; then
            print_error "Failed to download from GitHub"
            return 1
        fi
    elif command -v wget &> /dev/null; then
        if ! wget -q --show-progress -O "$output" "$url"; then
            print_error "Failed to download from GitHub"
            return 1
        fi
    fi
    
    return 0
}

install_srw() {
    local SRW_PATH="$HOME/.local/bin/srw.bash"
    local BASHRC_PATH="$HOME/.bashrc"
    local BASHRC_BACKUP="$HOME/.bashrc.srw-backup.$(date +%Y%m%d_%H%M%S)"
    
    echo ""
    echo "╔══════════════════════════════════════╗"
    echo "║      SRW Installation Script         ║"
    echo "╚══════════════════════════════════════╝"
    echo ""
    
    if [ "$EUID" -eq 0 ]; then
        print_warning "Warning: Running as root. Installation will be for root user."
        read -p "Continue? [y/N] " -n 1 -r
        echo
        if [[ ! $REPLY =~ ^[Yy]$ ]]; then
            print_error "Installation cancelled."
            exit 1
        fi
    fi
    
    check_requirements
    
    if [ ! -d "$HOME/.local/bin" ]; then
        print_info "Creating ~/.local/bin directory..."
        mkdir -p "$HOME/.local/bin"
        print_success "Created ~/.local/bin"
    fi
    
    if [ -f "$SRW_PATH" ]; then
        print_warning "srw.bash already exists at $SRW_PATH"
        
        cp "$SRW_PATH" "${SRW_PATH}.backup.$(date +%Y%m%d_%H%M%S)"
        print_info "Created backup: ${SRW_PATH}.backup.*"
        
        read -p "Update to latest version? [Y/n] " -n 1 -r
        echo
        if [[ $REPLY =~ ^[Nn]$ ]]; then
            print_info "Keeping existing srw.bash"
        else
            print_info "Downloading latest version..."
            if ! download_file "$SRW_GITHUB_URL" "$SRW_PATH"; then
                print_error "Failed to download SRW"
                exit 1
            fi
            print_success "Updated srw.bash"
        fi
    else
        print_info "Downloading srw.bash..."
        if ! download_file "$SRW_GITHUB_URL" "$SRW_PATH"; then
            print_error "Failed to download SRW"
            exit 1
        fi
        print_success "Downloaded srw.bash"
    fi
    
    chmod +x "$SRW_PATH" 2>/dev/null || true
    print_success "Made srw.bash executable"
    
    print_info "Checking $BASHRC_PATH for existing SRW configuration..."
    
    if grep -q "SRW - System Resource Widget" "$BASHRC_PATH" 2>/dev/null; then
        print_warning "SRW configuration already exists in $BASHRC_PATH"
        
        read -p "Update bashrc configuration? [y/N] " -n 1 -r
        echo
        if [[ ! $REPLY =~ ^[Yy]$ ]]; then
            print_info "Keeping existing bashrc configuration"
            print_final_instructions
            return
        fi
        
        cp "$BASHRC_PATH" "$BASHRC_BACKUP"
        print_info "Created backup: $BASHRC_BACKUP"
        
        print_info "Updating SRW configuration in bashrc..."
        
        local temp_file=$(mktemp)
        
        awk '
        /^# SRW/ { in_srw=1 }
        !in_srw { print }
        /^fi$/ && in_srw { in_srw=0 }
        ' "$BASHRC_PATH" > "$temp_file"
        
        echo "" >> "$temp_file"
        echo "$BASHRC_SNIPPET" >> "$temp_file"
        
        mv "$temp_file" "$BASHRC_PATH"
        print_success "Updated bashrc configuration"
    else
        print_info "Adding SRW configuration to $BASHRC_PATH..."
        
        cp "$BASHRC_PATH" "$BASHRC_BACKUP" 2>/dev/null || true
        
        echo "" >> "$BASHRC_PATH"
        echo "$BASHRC_SNIPPET" >> "$BASHRC_PATH"
        print_success "Added configuration to bashrc"
    fi
    
    pfi
}

pfi() {
    echo ""
    echo "========================================="
    echo "SRW Installation Complete!"
    echo "========================================="
    echo ""
    echo "What was installed:"
    echo "1. srw.bash → $HOME/.local/bin/srw.bash"
    echo "2. Configuration added to → $HOME/.bashrc"
    echo ""
    echo "Backups created:"
    echo "  bashrc: ~/.bashrc.srw-backup.*"
    if [ -f "${SRW_PATH}.backup.*" ]; then
        echo "  srw.bash: ${SRW_PATH}.backup.*"
    fi
    echo ""
    echo "Next steps:"
    echo "1. Reload your bashrc:"
    echo "   $ source ~/.bashrc"
    echo ""
    echo "2. Test the installation:"
    echo "   $ srwfetch"
    echo "   $ srw theme list"
    echo ""
    echo "3. To enable features, edit ~/.bashrc and uncomment:"
    echo "   #alias clear='command clear && srwfetch'  (for clear alias)"
    echo "   #srwfetch                                 (for auto-display)"
    echo ""
    echo "Quick start:"
    echo "  srwfetch          - Display system info"
    echo "  srw theme blue    - Apply blue theme"
    echo "  srw help          - Show all commands"
    echo ""
    echo "Files location:"
    echo "  Config: $HOME/.local/share/srw/"
    echo "  Themes: $HOME/.local/share/srw/presets/"
    echo ""
    echo "GitHub: https://github.com/xsorroww/omarchy-customization"
    echo ""
    echo "Enjoy!"
    echo ""
}

uninstall_srw() {
    local SRW_PATH="$HOME/.local/bin/srw.bash"
    local BASHRC_PATH="$HOME/.bashrc"
    
    print_warning "This will remove SRW from your system."
    read -p "Are you sure? [y/N] " -n 1 -r
    echo
    if [[ ! $REPLY =~ ^[Yy]$ ]]; then
        print_info "Uninstall cancelled."
        exit 0
    fi
    
    if [ -f "$SRW_PATH" ]; then
        rm "$SRW_PATH"
        print_success "Removed $SRW_PATH"
    fi
    
    if [ -f "$BASHRC_PATH" ]; then
        local backup="$BASHRC_PATH.srw-uninstall-$(date +%Y%m%d_%H%M%S)"
        cp "$BASHRC_PATH" "$backup"
        
        local temp_file=$(mktemp)
        awk '
        /^# SRW/ { in_srw=1 }
        !in_srw { print }
        /^fi$/ && in_srw { in_srw=0 }
        ' "$BASHRC_PATH" > "$temp_file"
        
        mv "$temp_file" "$BASHRC_PATH"
        print_success "Removed SRW from bashrc (backup: $backup)"
    fi
    
    echo ""
    echo "SRW has been uninstalled."
    echo "Note: Configuration files in ~/.local/share/srw/ were kept."
    echo "Remove them manually if desired: rm -rf ~/.local/share/srw/"
    echo ""
}

show_help() {
    echo "SRW Install Script"
    echo ""
    echo "Usage: $0 [OPTION]"
    echo ""
    echo "Options:"
    echo "  install    Install/update SRW (default)"
    echo "  uninstall  Remove SRW from system"
    echo "  help       Show this help message"
    echo ""
    echo "Examples:"
    echo "  $0           # Install/update SRW"
    echo "  $0 install   # Same as above"
    echo "  $0 uninstall # Remove SRW"
    echo ""
    echo "The script will:"
    echo "  1. Download srw.bash from GitHub"
    echo "  2. Install to ~/.local/bin/srw.bash"
    echo "  3. Add configuration to ~/.bashrc"
    echo ""
}

main() {
    case "${1:-install}" in
        install|"")
            install_srw
            ;;
        uninstall|remove)
            uninstall_srw
            ;;
        help|--help|-h)
            show_help
            ;;
        *)
            print_error "Unknown option: $1"
            show_help
            exit 1
            ;;
    esac
}

main "$@"
