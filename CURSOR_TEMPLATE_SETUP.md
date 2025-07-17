# Cursor Template System Setup Guide

This document explains how to set up and use the intelligent Cursor template router system across all your development environments.

## Overview

The Cursor Template System provides:
- **15 specialized workflow templates** for different types of development tasks
- **Intelligent request routing** that automatically matches user requests to appropriate templates
- **Clarification system** that prompts when multiple templates could apply
- **Consistent workflows** across all development tasks
- **Native Cursor integration** using the official `.cursor/rules` system

## Quick Setup

### 1. Copy Template Files

Copy the following files to your project's `.cursor/rules/` directory:

```
.cursor/rules/               # Cursor rules directory
├── template-router.mdc      # Master router logic
├── templates-request.mdc
├── templates-architecture.mdc
├── templates-clean.mdc
├── templates-deploy.mdc
├── templates-documentation.mdc
├── templates-dxdesign.mdc
├── templates-optimize.mdc
├── templates-projectclean.mdc
├── templates-refresh.mdc
├── templates-research.mdc
├── templates-review.mdc
├── templates-securityaudit.mdc
├── templates-setup.mdc
├── templates-testcoverage.mdc
└── templates-uxaudit.mdc
```

### 2. Make It Global (Optional)

To use across all projects, copy to your global Cursor settings:

**Windows:**
```powershell
$cursorDir = "$env:APPDATA\Cursor\User\globalStorage\cursor.cursor-workspace"
if (!(Test-Path $cursorDir)) { New-Item -ItemType Directory -Path $cursorDir -Force }
Copy-Item ".cursor\rules\*" "$cursorDir" -Recurse -Force
```

**macOS/Linux:**
```bash
mkdir -p ~/.cursor/globalStorage/cursor.cursor-workspace/rules
cp .cursor/rules/*.mdc ~/.cursor/globalStorage/cursor.cursor-workspace/rules/
```

## File Format

All template files use the **MDC (Markdown Cursor)** format with `.mdc` extension. This is Cursor's native rule format that provides:
- Native integration with Cursor's rule system
- Automatic rule loading and availability
- Proper rule precedence and conflict resolution

## Available Templates

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

## How It Works

### Automatic Mode Detection

The router (`.cursor/rules/template-router.mdc`) analyzes your request using keyword matching:

```
"Fix the login bug" → Refresh mode
"Add authentication to the API" → Request mode  
"Set up a new React project" → Setup mode
"Improve the search performance" → Optimize mode
"Review this pull request" → Review mode
```

### Template Integration

When a mode is detected:
1. The router determines the appropriate template
2. Uses `fetch_rules` to load the specific template workflow from `.cursor/rules/templates-<mode>.mdc`
3. Executes the structured workflow for that mode
4. Provides consistent, high-quality results

### Clarification When Needed

When multiple modes could apply, you'll get a clarification prompt:

```
I can help you with this request using different approaches:

1. **Clean** - Remove unused code and refactor specific modules
2. **ProjectClean** - Full project cleanup across entire codebase
3. **Optimize** - Focus on performance improvements

Which approach would you prefer? (Just reply with the number)
```

## Usage Examples

### Simple Requests
```
"Add user authentication" 
→ Automatically uses Request mode

"Deploy to production"
→ Automatically uses Deploy mode

"Clean up unused imports"
→ Automatically uses Clean mode
```

### Complex/Ambiguous Requests
```
"Improve the codebase"
→ Prompts: Architecture, Clean, ProjectClean, Optimize, TestCoverage

"Make the app better"
→ Prompts: UXAudit, DXDesign, Optimize, SecurityAudit

"Set up monitoring"
→ Prompts: Setup, Architecture, Deploy
```

### Explicit Mode Selection
```
"[MODE: SecurityAudit] Check the codebase"
"[MODE: Research] Compare React vs Vue"
"[MODE: UXAudit] Review the checkout flow"
```

## Keyword Reference

Use these keywords to trigger specific modes:

| Mode | Keywords |
|------|----------|
| **Request** | implement, add, create, build, develop, feature |
| **Setup** | initialize, bootstrap, scaffold, setup, install |
| **Architecture** | design, plan, architect, structure, system |
| **Optimize** | improve, faster, performance, speed, efficiency |
| **Refresh** | fix, debug, error, bug, broken, issue |
| **Clean** | cleanup, refactor, remove, simplify, unused |
| **ProjectClean** | full cleanup, project-wide, clean entire |
| **TestCoverage** | test, coverage, unit test, testing |
| **Review** | review, analyze, check, inspect, evaluate |
| **SecurityAudit** | security, vulnerability, audit, scan |
| **Documentation** | document, docs, README, API docs |
| **DXDesign** | developer experience, DX, CLI, tooling |
| **UXAudit** | user experience, UX, usability, interface |
| **Research** | research, investigate, compare, study |
| **Deploy** | deploy, release, publish, CI/CD, pipeline |

## Customization

### Adding Custom Templates

1. Create a new template file: `.cursor/rules/templates-mymode.mdc`
2. Add the mode to the router in `.cursor/rules/template-router.mdc`
3. Define keywords and intent matching rules

### Modifying Existing Templates

Edit the specific template file in `.cursor/rules/` to adjust:
- Workflow steps
- Tool commands
- Validation criteria
- Reporting format

### Project-Specific Customization

Override global settings by placing project-specific versions in your project's `.cursor/rules/` directory.

## Troubleshooting

### Templates Not Loading
- Ensure `.cursor/rules/` directory exists in your project
- Check that all template files have `.mdc` extension
- Verify `template-router.mdc` is present and properly formatted
- Restart Cursor after making changes

### Mode Detection Issues
- Use explicit mode selection: `[MODE: TemplateName] your request`
- Check keyword matching in `template-router.mdc`
- Review the intent matching system for ambiguous cases

### Template Execution Problems
- Verify the specific template file exists in `.cursor/rules/`
- Check that the file is properly formatted MDC
- Ensure required tools are available in your environment
- Use `fetch_rules` tool to access template workflows

## Advanced Integration

### Rule Precedence
- Project-specific rules in `.cursor/rules/` override global rules
- Template rules are loaded on-demand via `fetch_rules`
- Router logic is always active for request analysis

### Performance
- Templates are lazy-loaded only when needed
- Keyword matching is optimized for fast routing
- No performance impact when templates aren't used

## Contributing

To improve the template system:
1. Add new templates for specialized workflows in `.cursor/rules/`
2. Enhance keyword matching in `template-router.mdc`
3. Improve template workflows based on usage patterns
4. Share successful customizations with the community

## Support

- Check template files in `.cursor/rules/` for specific workflow documentation
- Review keyword matching rules in `template-router.mdc`
- Test with explicit mode selection if automatic detection fails
- Customize templates to match your project's specific needs

---

**Setup Complete!** Your Cursor environment now has intelligent template routing using the official `.cursor/rules` system for consistent, high-quality development workflows across all tasks. 