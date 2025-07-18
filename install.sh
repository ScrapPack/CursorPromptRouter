#!/bin/bash
# install.sh - Automated installer for Cursor Template Router

set -e

echo "🚀 Installing Cursor Template Router..."

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Configuration
REPO_URL="https://github.com/ScrapPack/CursorUpgrade"
RAW_URL="https://raw.githubusercontent.com/ScrapPack/CursorUpgrade/main"

# Function to print colored output
print_status() {
    echo -e "${BLUE}[INFO]${NC} $1"
}

print_success() {
    echo -e "${GREEN}[SUCCESS]${NC} $1"
}

print_warning() {
    echo -e "${YELLOW}[WARNING]${NC} $1"
}

print_error() {
    echo -e "${RED}[ERROR]${NC} $1"
}

# Check for global installation flag
GLOBAL_INSTALL=false
if [[ "$1" == "--global" ]]; then
    GLOBAL_INSTALL=true
    if [[ "$OSTYPE" == "msys" || "$OSTYPE" == "win32" ]]; then
        CURSOR_RULES_DIR="$APPDATA/Cursor/User/globalStorage/cursor.cursor-workspace/rules"
    else
        CURSOR_RULES_DIR="$HOME/.cursor/globalStorage/cursor.cursor-workspace/rules"
    fi
    print_status "Installing globally for all projects..."
else
CURSOR_RULES_DIR=".cursor/rules"
    print_status "Installing for current project..."
fi

# Template files to install
TEMPLATES=(
    "template-router.mdc"
    "templates-request.mdc"
    "templates-setup.mdc"
    "templates-architecture.mdc"
    "templates-optimize.mdc"
    "templates-refresh.mdc"
    "templates-clean.mdc"
    "templates-projectclean.mdc"
    "templates-testcoverage.mdc"
    "templates-review.mdc"
    "templates-securityaudit.mdc"
    "templates-documentation.mdc"
    "templates-dxdesign.mdc"
    "templates-uxaudit.mdc"
    "templates-research.mdc"
    "templates-deploy.mdc"
    "templates-question.mdc"
    "templates-help.mdc"
    "templates-debug.mdc"
)

# Check if curl is available
if ! command -v curl &> /dev/null; then
    print_error "curl is required but not installed. Please install curl first."
    exit 1
fi

# Create directory structure
print_status "Creating directory structure..."
mkdir -p "$CURSOR_RULES_DIR"

# Backup existing templates if they exist
if [ -d "$CURSOR_RULES_DIR" ] && [ "$(ls -A $CURSOR_RULES_DIR 2>/dev/null)" ]; then
    BACKUP_DIR="$CURSOR_RULES_DIR.backup.$(date +%Y%m%d_%H%M%S)"
    print_warning "Existing templates found. Creating backup at $BACKUP_DIR"
    cp -r "$CURSOR_RULES_DIR" "$BACKUP_DIR"
fi

# Download templates
print_status "Downloading template files..."
FAILED_DOWNLOADS=0

for template in "${TEMPLATES[@]}"; do
    print_status "Downloading $template..."
    
    # Try to download the template
    if curl -s -f -o "$CURSOR_RULES_DIR/$template" "$RAW_URL/.cursor/rules/$template"; then
        print_success "Downloaded $template"
    else
        print_error "Failed to download $template"
        FAILED_DOWNLOADS=$((FAILED_DOWNLOADS + 1))
    fi
done

# Set proper permissions
print_status "Setting file permissions..."
chmod 644 "$CURSOR_RULES_DIR"/*.mdc 2>/dev/null || true

# Verify installation
print_status "Verifying installation..."
MISSING_FILES=0

for template in "${TEMPLATES[@]}"; do
    if [ -f "$CURSOR_RULES_DIR/$template" ]; then
        print_success "✅ $template"
    else
        print_error "❌ Missing $template"
        MISSING_FILES=$((MISSING_FILES + 1))
    fi
done

# Installation summary
echo ""
if [ $MISSING_FILES -eq 0 ]; then
    print_success "🎉 Cursor Template Router installed successfully!"
    echo ""
    
    if [ "$GLOBAL_INSTALL" = true ]; then
        echo "📁 Installed globally at: $CURSOR_RULES_DIR"
        echo "🌍 Templates are now available for all projects"
    else
        echo "📁 Installed locally at: $CURSOR_RULES_DIR"
        echo "📂 Templates are available for this project only"
    fi
    
    echo ""
    echo "Next steps:"
    echo "1. Restart Cursor to activate the templates"
    echo "2. Test with: 'Add a new API endpoint'"
    echo "3. Check the README.md for usage instructions"
    
    if [ "$GLOBAL_INSTALL" = false ]; then
        echo ""
        echo "💡 Tip: Use --global flag to install for all projects:"
        echo "   curl -sSL $RAW_URL/install.sh | bash -s -- --global"
    fi
else
    print_warning "⚠️  Installation completed with $MISSING_FILES missing files"
    echo "Please manually copy the missing template files from the source project."
    echo "Repository: $REPO_URL"
fi

echo ""
print_status "Template files installed in: $CURSOR_RULES_DIR"
print_status "Router file: $CURSOR_RULES_DIR/template-router.mdc" 

# Show template count
TEMPLATE_COUNT=$(ls -1 "$CURSOR_RULES_DIR"/*.mdc 2>/dev/null | wc -l)
print_status "Total templates installed: $TEMPLATE_COUNT" 