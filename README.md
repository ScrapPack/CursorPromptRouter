# Cursor Template Router System

An intelligent task router that analyzes user requests and matches them to appropriate workflow templates using intent-based classification and explicit mode tags.

## 🚀 Features

- **Intent-Based Classification**: Understands semantic meaning beyond simple keywords
- **Explicit Mode Tags**: Precise control with `[MODE: Request]` syntax
- **Context Awareness**: Uses file types, technical terms, and action patterns
- **User Confirmation**: Clarification system for ambiguous requests
- **Priority-Based Routing**: Clear hierarchy for mode selection
- **18 Specialized Templates**: Cover development, quality, documentation, and support workflows

## 📦 Installation

### Automated Installation (Recommended)

```bash
# Clone the repository
git clone https://github.com/yourusername/cursor-template-router.git
cd cursor-template-router

# Run the installation script
./install.sh
```

### Manual Installation

1. **Clone the repository**:
```bash
   git clone https://github.com/yourusername/cursor-template-router.git
   cd cursor-template-router
   ```

2. **Copy rules to Cursor**:
```bash
   # Create .cursor/rules directory if it doesn't exist
   mkdir -p ~/.cursor/rules

   # Copy all template files
   cp .cursor/rules/* ~/.cursor/rules/
```

3. **Restart Cursor** to load the new rules.

### Global Installation

For system-wide availability:

```bash
# Run with global flag
./install.sh --global
```

This installs the router system globally for all Cursor projects.

## 🎯 Usage

### Explicit Mode Tags (Recommended for Power Users)

For precise control and consistent behavior:

```
[MODE: Request] Add user authentication to the API
[MODE: Question] How does dependency injection work?
[MODE: Debug] The login form is not working
[MODE: Setup] Initialize a new React project
[MODE: Documentation] Create API documentation
```

### Natural Language (Intent-Based)

For conversational interaction:

```
Add user authentication to the API
How does dependency injection work?
The login form is not working
Set up a new React project
Create documentation for the API
```

### Context-Aware Examples

The router understands context:

```
"Check the README" → Documentation Mode (file type context)
"Fix the login bug" → Refresh Mode (problem-solving intent)
"Help me understand this" → Help Mode (confusion indicator)
"Research authentication libraries" → Research Mode (investigation intent)
```

## 🔧 Available Templates

### Development Workflows
- **Request** - General task implementation and feature development
- **Setup** - Project initialization, scaffolding, environment setup
- **Architecture** - System design, component planning, tech stack decisions
- **Optimize** - Performance improvements, efficiency enhancements
- **Refresh** - Bug fixes, maintenance, issue resolution

### Quality & Testing
- **Clean** - Code cleanup, refactoring, removing dead code
- **ProjectClean** - Full project cleanup, removing unused files/dependencies
- **TestCoverage** - Adding tests, improving test coverage
- **Review** - Code review, PR analysis, quality assessment
- **SecurityAudit** - Security scanning, vulnerability assessment

### Documentation & Experience
- **Documentation** - Creating/updating docs, API documentation
- **DXDesign** - Developer experience improvements, tooling, CLI enhancements
- **UXAudit** - User experience review, usability improvements
- **Research** - Technology research, proof of concepts, analysis

### Operations
- **Deploy** - Deployment workflows, CI/CD, release management

### User Support & Guidance
- **Question** - General questions, explanations, informational requests
- **Help** - System guidance, new user assistance, how-to help
- **Debug** - Error troubleshooting, issue resolution, systematic debugging

## 🎯 How It Works

### Priority System

1. **Explicit Mode Tags** (Highest Priority)
   - Always honored when present
   - Format: `[MODE: Request] Add user authentication`
   - Recommended for power users and precise control

2. **Intent-Based Classification** (Primary)
   - Analyzes semantic meaning and context
   - Understands user intent beyond simple keywords
   - Provides more accurate mode selection

3. **Context Clues** (Secondary)
   - Uses file types, technical terms, and action patterns
   - Helps disambiguate similar requests
   - Improves accuracy for edge cases

4. **Fallback Logic** (Lowest Priority)
   - Graceful degradation when intent is unclear
   - User confirmation for ambiguous cases
   - Clear guidance for next steps

### Intent Classification

The router understands different types of intents:

**Development Intents:**
- "I want to build/create/implement something" → Request Mode
- "I need to start a new project" → Setup Mode
- "I want to improve performance" → Optimize Mode

**Problem-Solving Intents:**
- "Something is broken/not working" → Debug Mode
- "I need to fix an issue" → Refresh Mode
- "I'm confused about how to proceed" → Help Mode

**Information Intents:**
- "I want to understand/learn about something" → Question Mode
- "I need documentation" → Documentation Mode
- "I want to research alternatives" → Research Mode

## 🔧 Configuration

### Customization

You can customize the router behavior by editing `.cursor/rules/template-router.mdc`:

- Add new intent patterns
- Modify keyword matching
- Adjust priority order
- Customize confirmation prompts

### Context File

The system maintains a `cursorContext.json` file to track:
- Implementation summaries
- Usage statistics
- Recent activities
- Mode preferences

## 📝 Coding Standards & Character Usage

### Special Character Guidelines

**❌ AVOID in Code and Scripts:**
- **Emojis** (😀, 🚀, ✅, ❌, etc.) - Can cause encoding issues, parsing errors, and compatibility problems
- **Unicode symbols** (→, ←, ↑, ↓, etc.) - May not render correctly in all environments
- **Smart quotes** ("", '', etc.) - Use standard ASCII quotes instead
- **Special formatting characters** - Stick to basic ASCII for maximum compatibility

**✅ USE ONLY in Documentation:**
- Emojis and special characters are acceptable in:
  - README files
  - Documentation files (.md, .txt)
  - Comments (sparingly)
  - User-facing content
  - Stylization purposes only

**Best Practices:**
- Use standard ASCII characters for all code, scripts, and configuration files
- Replace emojis with descriptive text (e.g., "PASS" instead of ✅, "FAIL" instead of ❌)
- Use simple text indicators for status and progress
- Ensure all code works across different operating systems and environments
- Test scripts with basic ASCII characters only

**Examples:**

```bash
# ❌ Bad (in code/scripts):
Write-Host "✅ Test passed!" -ForegroundColor Green
Write-Host "❌ Test failed!" -ForegroundColor Red

# ✅ Good (in code/scripts):
Write-Host "PASS: Test completed successfully" -ForegroundColor Green
Write-Host "FAIL: Test encountered an error" -ForegroundColor Red
```

```markdown
# ✅ Acceptable (in documentation):
# 🚀 Getting Started
This guide will help you set up the project...
```

## 🐛 Troubleshooting

### Router Not Triggering

1. **Check for explicit mode tags** - they always work
2. **Try rephrasing** your request with clearer intent
3. **Use the confirmation system** when presented with options
4. **Check for conflicting global rules** in Cursor settings

### Incorrect Mode Selection

1. **Use explicit mode tags** to override automatic selection
2. **Rephrase your request** with clearer intent
3. **Use the confirmation system** to choose the correct mode
4. **Provide feedback** on the selection process

### Ambiguous Requests

If you get clarification prompts:

1. **Choose the option** that best matches your intent
2. **Use explicit mode tags** in future similar requests
3. **Rephrase your request** to be more specific
4. **Learn from the suggestions** for better future requests

## 📚 Documentation

- [Router Improvements](ROUTER_IMPROVEMENTS.md) - Detailed explanation of the improved system
- [Template Setup](CURSOR_TEMPLATE_SETUP.md) - Setup and configuration guide
- [Usage Examples](examples/) - Common usage patterns and examples

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Test thoroughly
5. Submit a pull request

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

- Inspired by the need for consistent AI assistant workflows
- Built for the Cursor IDE community
- Designed to improve developer productivity and code quality 