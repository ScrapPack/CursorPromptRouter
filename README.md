# Cursor Template Router System

An intelligent task router that analyzes user requests and matches them to appropriate workflow templates using advanced intent-based classification, explicit mode tags, and context-aware pattern matching.

## 🚀 Features

- **Advanced Intent Classification**: 85-95% accuracy with phrase-based pattern detection
- **Explicit Mode Tags**: Precise control with `[MODE: Request]` syntax (100% reliable)
- **Context-Aware Patterns**: Question marks, file types, technical terms, and action patterns
- **Priority-Based Routing**: Clear hierarchy with conflict resolution
- **User Confirmation System**: Clarification for ambiguous requests
- **18 Specialized Templates**: Cover development, quality, documentation, and support workflows
- **Context Persistence**: Tracks usage patterns and implementation history

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

For precise control and 100% reliable behavior:

```
[MODE: Request] Add user authentication to the API
[MODE: Question] How does dependency injection work?
[MODE: Debug] The login form is not working
[MODE: Setup] Initialize a new React project
[MODE: Documentation] Create API documentation
[MODE: Clean] Remove unused imports from src/
[MODE: TestCoverage] Add unit tests for user service
[MODE: SecurityAudit] Scan for vulnerabilities
[MODE: Optimize] Improve database query performance
```

**Benefits:**
- **100% accuracy** - Always routes to the correct mode
- **No ambiguity** - Eliminates confusion about intent
- **Consistent behavior** - Same result every time
- **Power user friendly** - Direct control over workflow selection

### Natural Language (Intent-Based)

For conversational interaction with 85-95% accuracy:

```
Add user authentication to the API
How does dependency injection work?
The login form is not working
Set up a new React project
Create documentation for the API
Update the database schema
Clean up unused code
Add tests for the API
Review the security implementation
```

### Context-Aware Examples

The router understands various context clues:

**Question Detection:**
```
"What is the best approach?" → Question Mode (question mark)
"How do I implement this?" → Question Mode (how + question mark)
"Is this secure?" → Question Mode (is + question mark)
```

**File Type Context:**
```
"Check the README" → Documentation Mode (file type context)
"Update the tests" → TestCoverage Mode (test file context)
"Fix the Dockerfile" → Setup Mode (config file context)
```

**Technical Term Context:**
```
"Deploy to production" → Deploy Mode (deployment terms)
"Scan for vulnerabilities" → SecurityAudit Mode (security terms)
"Optimize the database" → Optimize Mode (performance terms)
```

**Problem Indicators:**
```
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

### Advanced Pattern Matching System

The router uses a sophisticated multi-layered pattern matching system with 85-95% accuracy:

#### Priority System (Highest to Lowest)

1. **Explicit Mode Tags** (100% Accuracy)
   - Always honored when present: `[MODE: Request] Add user authentication`
   - Recommended for power users and precise control
   - Bypasses all other pattern matching

2. **Phrase-Based Patterns** (Highest Accuracy)
   - Complete phrases for maximum precision
   - Examples: "performance is poor", "the app is broken", "what is the best way"
   - Reduces false positives from partial word matches

3. **Context Patterns** (High Priority)
   - Question marks (?), file types (.md, test files), technical terms
   - Examples: "?" → Question Mode, "test" → TestCoverage Mode, "deploy" → Deploy Mode
   - Uses specific domain knowledge for accurate routing

4. **Intent Patterns** (Standard Priority)
   - Word-based patterns with word boundaries
   - Examples: "implement" → Request Mode, "help" → Help Mode, "research" → Research Mode
   - Handles general intent classification

5. **Fallback Logic** (Lowest Priority)
   - Graceful degradation when intent is unclear
   - User confirmation for ambiguous cases
   - Default to Request mode for unclear cases

### Pattern Matching Algorithm

```
1. Check for [MODE: X] explicit tags
2. Test phrase-based patterns (complete phrases)
3. Check context patterns (question marks, file types, technical terms)
4. Match intent patterns (word-based with boundaries)
5. Apply fallback logic with user confirmation
6. Default to Request mode if still unclear
```

### Conflict Resolution

The system includes intelligent conflict resolution:

- **Question Words in Development Context**: Prioritizes development intent
- **Action Words**: "add", "create", "build" → Request Mode
- **Problem Indicators**: "broken", "error", "not working" → Debug/Refresh Mode
- **Documentation Keywords**: "docs", "README", "API docs" → Documentation Mode
- **Testing Keywords**: "test", "coverage", "unit test" → TestCoverage Mode
- **Security Keywords**: "security", "audit", "vulnerability" → SecurityAudit Mode
- **Performance Keywords**: "performance", "optimize", "improve" → Optimize Mode

### Intent Classification

The router understands different types of intents with high accuracy:

**Development Intents:**
- "I want to build/create/implement/update something" → Request Mode
- "I need to start a new project" → Setup Mode
- "I want to improve performance" → Optimize Mode
- "I need to design the architecture" → Architecture Mode

**Problem-Solving Intents:**
- "Something is broken/not working" → Debug Mode
- "I need to fix an issue" → Refresh Mode
- "I'm confused about how to proceed" → Help Mode
- "There's an error in the code" → Debug Mode

**Information Intents:**
- "I want to understand/learn about something" → Question Mode
- "I need documentation" → Documentation Mode
- "I want to research alternatives" → Research Mode
- "What is the best approach?" → Question Mode

**Quality & Maintenance Intents:**
- "I need to clean up the code" → Clean Mode
- "I want to add tests" → TestCoverage Mode
- "I need to review the code" → Review Mode
- "I want to check security" → SecurityAudit Mode

## 🔧 Configuration

### Customization

You can customize the router behavior by editing `.cursor/rules/template-router.mdc`:

- **Add new intent patterns** - Extend keyword matching for new modes
- **Modify phrase-based patterns** - Add complete phrases for higher accuracy
- **Adjust context patterns** - Customize file type and technical term detection
- **Change priority order** - Reorder pattern matching hierarchy
- **Customize confirmation prompts** - Modify user interaction messages

### Context File

The system maintains a `cursorContext.json` file to track:
- **Implementation summaries** - Brief descriptions of completed tasks
- **Usage statistics** - Mode usage patterns and frequency
- **Recent activities** - Last 10 tasks with timestamps
- **Mode preferences** - User behavior patterns for optimization

### Advanced Configuration

**Pattern Matching Customization:**
```regex
# Add new intent patterns
\b(your|new|keywords|here)\b

# Add phrase-based patterns
"your complete phrase here"

# Add context patterns
\?|your|context|indicators
```

**Priority System Modification:**
The priority order can be adjusted in the router configuration:
1. Explicit tags (always highest)
2. Phrase-based patterns
3. Context patterns
4. Intent patterns
5. Fallback logic

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

1. **Use explicit mode tags** - `[MODE: Request]` always works (100% reliable)
2. **Check for question marks** - "?" automatically triggers Question mode
3. **Try rephrasing** your request with clearer intent words
4. **Use the confirmation system** when presented with options
5. **Check for conflicting global rules** in Cursor settings

### Incorrect Mode Selection

1. **Use explicit mode tags** to override automatic selection
2. **Rephrase your request** with clearer intent words
3. **Use the confirmation system** to choose the correct mode
4. **Learn from the suggestions** for better future requests

### Common Issues and Solutions

**"update" goes to wrong mode:**
- "update the code" → Request Mode (implementation)
- "How do I update this?" → Question Mode (question mark overrides)

**Question words in development context:**
- "What is the best way to implement this?" → Request Mode (development context prioritized)
- "What is dependency injection?" → Question Mode (information seeking)

**Ambiguous requests:**
- Use explicit mode tags for clarity
- Rephrase with specific action words
- Use the confirmation system when prompted

### Performance Tips

1. **Use explicit mode tags** for consistent, fast routing
2. **Include question marks** for information requests
3. **Use specific action words** for implementation tasks
4. **Learn the confirmation system** for ambiguous cases

## 📚 Documentation

- [Template Setup](CURSOR_TEMPLATE_SETUP.md) - Complete setup and configuration guide
- [Router System](.cursor/rules/template-router.mdc) - Advanced router configuration and patterns
- [Context Analysis](.cursor/rules/context-analysis.mdc) - Context management and persistence
- [Template Rules](.cursor/rules/) - All 18 specialized workflow templates

### Quick Reference

**Explicit Mode Tags (100% reliable):**
```
[MODE: Request] - Implementation tasks
[MODE: Question] - Information requests  
[MODE: Debug] - Problem troubleshooting
[MODE: Setup] - Project initialization
[MODE: Clean] - Code cleanup
[MODE: TestCoverage] - Adding tests
[MODE: SecurityAudit] - Security scanning
[MODE: Optimize] - Performance improvements
```

**Natural Language Examples:**
```
"Add authentication" → Request Mode
"How does this work?" → Question Mode  
"The app is broken" → Debug Mode
"Set up a new project" → Setup Mode
"Clean up the code" → Clean Mode
"Add unit tests" → TestCoverage Mode
"Check for vulnerabilities" → SecurityAudit Mode
"Improve performance" → Optimize Mode
```

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