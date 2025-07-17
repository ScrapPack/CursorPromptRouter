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
CURSOR_RULES_DIR=".cursor/rules"

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
for template in "${TEMPLATES[@]}"; do
    print_status "Downloading $template..."
    
    # Try to download the template
    if curl -s -f -o "$CURSOR_RULES_DIR/$template" "$RAW_URL/$CURSOR_RULES_DIR/$template"; then
        print_success "Downloaded $template"
    else
        print_error "Failed to download $template"
        print_warning "You may need to manually copy this file from the source project"
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
    echo "Next steps:"
    echo "1. Restart Cursor to activate the templates"
    echo "2. Test with: 'Add a new API endpoint'"
    echo "3. Check the README.md for usage instructions"
else
    print_warning "⚠️  Installation completed with $MISSING_FILES missing files"
    echo "Please manually copy the missing template files from the source project."
fi

echo ""
print_status "Template files installed in: $CURSOR_RULES_DIR"
print_status "Router file: $CURSOR_RULES_DIR/template-router.mdc" 