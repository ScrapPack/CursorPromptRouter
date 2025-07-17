# 🚀 Cursor Template Router

> **Intelligent workflow routing for Cursor AI - Automatically match your requests to the perfect development workflow**

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Cursor](https://img.shields.io/badge/Cursor-IDE-blue.svg)](https://cursor.sh)
[![Template Count](https://img.shields.io/badge/Templates-18-green.svg)](https://github.com/ScrapPack/CursorUpgrade)

## 🎯 The Problem

Cursor AI is powerful, but it can be inconsistent. You ask for "improve the codebase" and sometimes get architecture suggestions, sometimes get performance optimizations, sometimes get code cleanup. The AI doesn't know which workflow to follow.

**What if Cursor could automatically detect your intent and use the right workflow every time?**

## ✨ The Solution

The **Cursor Template Router** is an intelligent system that analyzes your requests and automatically routes them to specialized workflow templates. Instead of guessing, it uses sophisticated keyword matching and intent analysis to provide consistent, high-quality results.

### 🎯 What It Does

- **🔍 Intelligent Analysis**: Analyzes your request using keyword matching and context clues
- **🎯 Smart Routing**: Routes to 1 of 18 specialized workflow templates
- **🤔 Clarification**: Asks for clarification when multiple approaches could work
- **⚡ Consistent Results**: Same request type = same workflow = consistent results
- **🛠️ Native Integration**: Uses Cursor's official `.cursor/rules` system

## 🏗️ System Architecture

```
User Request → Keyword Analysis → Intent Matching → Template Selection → Workflow Execution
```

### 📋 Available Workflows

| Category | Template | Purpose | Example Trigger |
|----------|----------|---------|-----------------|
| **🛠️ Development** | Request | General feature development | "Add user authentication" |
| **🚀 Setup** | Setup | Project initialization | "Set up new React project" |
| **🏛️ Architecture** | Architecture | System design | "Design microservices" |
| **⚡ Performance** | Optimize | Performance improvements | "Optimize database queries" |
| **🐛 Maintenance** | Refresh | Bug fixes | "Fix login bug" |
| **🧹 Code Quality** | Clean | Code cleanup | "Clean up unused imports" |
| **🗂️ Project Clean** | ProjectClean | Full project cleanup | "Clean entire codebase" |
| **🧪 Testing** | TestCoverage | Test improvements | "Add test coverage" |
| **👀 Review** | Review | Code review | "Review pull request" |
| **🔒 Security** | SecurityAudit | Security assessment | "Security audit" |
| **📚 Documentation** | Documentation | Documentation | "Create API docs" |
| **👨‍💻 Developer Experience** | DXDesign | DX improvements | "Improve CLI" |
| **🎨 User Experience** | UXAudit | UX review | "Audit user flow" |
| **🔬 Research** | Research | Technology research | "Research GraphQL vs REST" |
| **🚀 Operations** | Deploy | Deployment | "Deploy to production" |
| **❓ User Support** | Question | General questions & explanations | "What is dependency injection?" |
| **🆘 Help** | Help | System guidance & new user assistance | "Help me get started" |
| **🐛 Debug** | Debug | Error troubleshooting & issue resolution | "My app is crashing" |

## 🚀 Quick Start

### 1. Install Templates

```bash
# Clone the repository
git clone https://github.com/ScrapPack/CursorUpgrade.git

# Copy templates to your project
cp -r CursorUpgrade/.cursor/rules .cursor/

# Or use the automated installer
curl -sSL https://raw.githubusercontent.com/ScrapPack/CursorUpgrade/main/install.sh | bash
```

### 2. Restart Cursor

Close and reopen Cursor to load the new templates.

### 3. Test It Out

Try these requests in Cursor:

```bash
# Should trigger Request mode
"Add user authentication to the API"

# Should trigger Documentation mode  
"Create API documentation"

# Should trigger Setup mode
"Set up a new React project"

# Should trigger clarification prompt
"Improve the codebase"
```

## 📖 How It Works

### 1. Request Analysis

The router analyzes your request using multiple layers:

```javascript
// Example analysis of "Build a readme file that explains the system"
{
  keywords: ["build", "readme", "explains"],
  primaryObject: "readme file", // Documentation artifact
  intent: "documentation creation",
  context: "explanatory content",
  mode: "Documentation"
}
```

### 2. Keyword Matching

Each template has specific keywords that trigger it:

| Mode | Keywords |
|------|----------|
| **Request** | implement, add, create, build, develop |
| **Documentation** | document, docs, README, explain, guide |
| **Setup** | initialize, bootstrap, scaffold, setup |
| **Architecture** | design, plan, architect, structure |
| **Optimize** | improve, faster, performance, speed |

### 3. Intent Hierarchy

When multiple modes match, the system uses intent hierarchy:

1. **Primary Object**: What's being worked on?
2. **Action Context**: What type of work?
3. **Scope**: Individual vs. system-wide?

### 4. Template Execution

Once a mode is selected:

1. Loads the specific template workflow
2. Extracts task details from your request
3. Executes the structured 5-6 step process
4. Provides consistent, high-quality results

## 🛠️ Installation

### Method 1: Manual Installation

```bash
# Create the rules directory
mkdir -p .cursor/rules

# Copy template files
cp /path/to/templates/template-router.mdc .cursor/rules/
cp /path/to/templates/templates-*.mdc .cursor/rules/
```

### Method 2: Automated Script

```bash
# Download and run installer
curl -sSL https://raw.githubusercontent.com/ScrapPack/CursorUpgrade/main/install.sh | bash
```

### Method 3: Global Installation

```bash
# Install for all projects (macOS/Linux)
mkdir -p ~/.cursor/globalStorage/cursor.cursor-workspace/rules
cp .cursor/rules/*.mdc ~/.cursor/globalStorage/cursor.cursor-workspace/rules/

# Windows PowerShell
$globalDir = "$env:APPDATA\Cursor\User\globalStorage\cursor.cursor-workspace\rules"
New-Item -ItemType Directory -Path $globalDir -Force
Copy-Item ".cursor\rules\*.mdc" $globalDir -Force
```

## 🎯 Usage Examples

### Clear Mode Selection

```bash
# Documentation Mode
"Create API documentation" → Documentation workflow
"Write setup guide" → Documentation workflow

# Request Mode  
"Add user authentication" → Request workflow
"Build payment system" → Request workflow

# Setup Mode
"Initialize new React project" → Setup workflow
"Set up development environment" → Setup workflow
```

### Multi-Mode Scenarios

When multiple approaches could work, you get a clarification prompt:

```
I can help you with this request using different approaches:

1. **Clean** - Remove unused code and refactor specific modules
2. **ProjectClean** - Full project cleanup across entire codebase
3. **Optimize** - Focus on performance improvements

Which approach would you prefer? (Just reply with the number)
```

### Explicit Mode Selection

You can also explicitly specify the mode:

```bash
"[MODE: SecurityAudit] Check the codebase"
"[MODE: Research] Compare React vs Vue"
"[MODE: UXAudit] Review the checkout flow"

### User Support Modes

For inexperienced users or when you need guidance:

**Question Mode**: Ask general questions and get explanations
- "What is dependency injection?"
- "Why do we need unit tests?"
- "How does authentication work?"

**Help Mode**: Get system guidance and examples
- "Help me get started"
- "I don't know what to ask"
- "What can this system do?"

**Debug Mode**: Systematic troubleshooting for issues
- "My app is crashing"
- "The function returns wrong results"
- "The page is loading slowly"
```

## 🚨 Common Pain Points & Solutions

### 1. Templates Not Loading

**Problem**: Templates don't appear to be working
```bash
# Check directory structure
ls -la .cursor/rules/

# Verify file permissions
chmod 644 .cursor/rules/*.mdc

# Restart Cursor completely
# Close and reopen Cursor
```

**Solution**: Ensure `.cursor/rules/` directory exists and contains `.mdc` files

### 2. Mode Detection Issues

**Problem**: Wrong mode is selected
```bash
# Use explicit mode selection
"[MODE: Documentation] Create README"

# Check keyword mappings
grep -A 5 "Keywords for Each Mode" .cursor/rules/template-router.mdc
```

**Solution**: Use explicit mode selection or check keyword mappings

### 3. Template Execution Problems

**Problem**: Templates don't execute properly
```bash
# Verify template format
head -10 .cursor/rules/templates-request.mdc

# Check for syntax errors
# Templates should start with # and contain proper markdown
```

**Solution**: Ensure templates are properly formatted MDC files

### 4. Performance Issues

**Problem**: System feels slow
```bash
# Templates are lazy-loaded, so this shouldn't be an issue
# If it is, check for large template files or syntax errors
```

**Solution**: Templates are loaded on-demand, minimal performance impact

## 🔧 Customization

### Project-Specific Templates

Create custom templates for your project:

```bash
# Copy and customize a template
cp .cursor/rules/templates-request.mdc .cursor/rules/templates-myproject-request.mdc

# Edit the template for your specific needs
# - Update commands for your tech stack
# - Add project-specific workflows
# - Include team conventions
```

### Language-Specific Customization

```bash
# Python project template
cat > .cursor/rules/templates-python-request.mdc << 'EOF'
# Python Request Template

## Custom Commands
- Install: `pip install -r requirements.txt`
- Test: `pytest`
- Lint: `flake8`
- Format: `black .`

## Python-Specific Workflows
- Virtual environment setup
- Dependency management
- Type hints and documentation
EOF
```

### Team Conventions

```bash
# Team standards template
cat > .cursor/rules/templates-team-standards.mdc << 'EOF'
# Team Development Standards

## Code Style
- Use TypeScript for all new code
- Follow ESLint configuration
- Use Prettier for formatting

## Git Workflow
- Use conventional commits
- Create feature branches from main
- Require PR reviews
EOF
```

## 🧪 Testing

### Test Template Loading

```bash
# Create test script
cat > test-templates.sh << 'EOF'
#!/bin/bash
echo "Testing Cursor Template System..."

for template in request setup architecture optimize refresh clean projectclean testcoverage review securityaudit documentation dxdesign uxaudit research deploy question help debug; do
    if [ -f ".cursor/rules/templates-${template}.mdc" ]; then
        echo "✅ templates-${template}.mdc"
    else
        echo "❌ Missing templates-${template}.mdc"
        exit 1
    fi
done

echo "🎉 All templates present!"
EOF

chmod +x test-templates.sh
./test-templates.sh
```

### Test Mode Selection

Try these test requests:

```bash
# Should work without clarification
"Add authentication" → Request mode
"Create documentation" → Documentation mode
"Set up project" → Setup mode
"What is dependency injection?" → Question mode
"Help me get started" → Help mode
"My app is crashing" → Debug mode

# Should trigger clarification
"Improve the app" → Multiple modes
"Fix the system" → Multiple modes
```

## 🤝 Contributing

We welcome contributions! Here's how to get started:

### 1. Fork the Repository

```bash
git clone https://github.com/ScrapPack/CursorUpgrade.git
cd CursorUpgrade
```

### 2. Create a Feature Branch

```bash
git checkout -b feature/new-template
```

### 3. Add Your Template

```bash
# Create new template
cp .cursor/rules/templates-request.mdc .cursor/rules/templates-mytemplate.mdc

# Update router with new keywords
# Edit .cursor/rules/template-router.mdc
```

### 4. Test Your Changes

```bash
# Test template loading
./test-templates.sh

# Test mode selection
# Try requests that should trigger your template
```

### 5. Submit a Pull Request

```bash
git add .
git commit -m "feat: add new template for X"
git push origin feature/new-template
```

## 📋 Template Development Guide

### Template Structure

Each template follows this structure:

```markdown
# Template Name

## Overview
Brief description of when to use this template

## Execution Workflow

### 1. Step One
- Description of what to do
- Commands to run
- Expected outcomes

### 2. Step Two
- Next steps
- Validation criteria
- Error handling

### 3. Step Three
- Final steps
- Reporting format
- Context updates
```

### Adding New Templates

1. **Create the template file**: `.cursor/rules/templates-<name>.mdc`
2. **Update the router**: Add keywords to `.cursor/rules/template-router.mdc`
3. **Test thoroughly**: Ensure mode selection works correctly
4. **Document**: Update this README with new template

## 🐛 Troubleshooting

### Debug Mode

```bash
# Enable debug logging (if supported)
export CURSOR_DEBUG=1

# Test with verbose output
# In Cursor: "Add authentication" (should show mode selection process)
```

### Common Error Messages

| Error | Cause | Solution |
|-------|-------|----------|
| "Templates not found" | Missing `.cursor/rules/` directory | Run installation script |
| "Wrong mode selected" | Keyword mapping issue | Use explicit mode selection |
| "Template not executing" | MDC syntax error | Check template format |
| "Performance issues" | Large template files | Optimize template size |

### Getting Help

1. **Check the issues**: [GitHub Issues](https://github.com/your-username/cursor-template-router/issues)
2. **Read the docs**: Check this README and template files
3. **Test mode selection**: Use explicit mode selection if automatic fails
4. **Customize templates**: Adapt templates for your specific needs

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

- **Cursor Team**: For the amazing AI-powered IDE
- **Community**: For feedback and contributions
- **Open Source**: For inspiration and best practices

## 📊 Project Status

- ✅ **Core Router**: Complete and tested
- ✅ **15 Templates**: All workflows implemented
- ✅ **Documentation**: Comprehensive guides
- ✅ **Installation**: Automated scripts
- 🔄 **Community Templates**: In development
- 🔄 **Advanced Features**: Planned

## 🚀 Roadmap

- [ ] **Community Templates**: User-submitted templates
- [ ] **Template Marketplace**: Browse and install templates
- [ ] **Advanced Analytics**: Usage statistics and insights
- [ ] **IDE Integration**: Direct integration with Cursor settings
- [ ] **Team Features**: Shared templates and collaboration

---

**Made with ❤️ for the Cursor community**

If this project helps you, please give it a ⭐ on GitHub! 