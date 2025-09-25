# ATDD Tests - Acceptance Test-Driven Development Learning Repository

## Overview

This repository contains Ruby exercises and katas to teach Acceptance Test-Driven Development (ATDD) and Behavior-Driven Development (BDD). Each sub-project highlights aspects of test-driven development, from unit tests to full web app testing.

## Technology Stack

- **Language**: Ruby
- **Testing Frameworks**: 
  - RSpec for unit testing
  - Cucumber for acceptance testing (BDD)
- **Web Framework**: Sinatra
- **Testing Tools**:
  - Capybara for web application testing
  - Rack-Test for HTTP testing
  - SimpleCov for test coverage reporting
- **Template Engine**: ERB

## Project Structure

### Core Examples

#### calculadora/
A simple calculator implementation demonstrating basic Test-Driven Development (TDD) practices.
- **Features**: Addition and division operations
- **Testing**: Unit tests with RSpec using Arrange-Act-Assert pattern
- **Learning Focus**: Basic TDD workflow and test structure

#### dojoTennis/
Tennis scoring system implementation, a classic coding dojo exercise.
- **Features**: Tennis game scoring logic including deuce scenarios
- **Testing**: Unit tests for game state management
- **Learning Focus**: Complex business logic testing and state management

#### amason/
E-commerce pricing calculator with regional tax and volume discount features.
- **Features**: Dynamic pricing based on volume discounts and country-specific tax rates
- **Testing**: Unit tests for business rule validation
- **Learning Focus**: Business rule testing and edge case handling

### Web Applications

#### anfitrion_web/
Multi-language greeting web application.
- **Features**: Time-aware greetings in different languages
- **Testing**: Web interface testing with Capybara
- **Learning Focus**: Web application testing and user interaction flows

#### tennisWeb/
Web-based tennis scoring system.
- **Features**: Interactive tennis game with live scoring
- **Testing**: Cucumber features for user stories
- **Learning Focus**: Full-stack BDD with user story acceptance criteria

#### mortal-kombat/
Fighting game simulation with character selection and combat mechanics.
- **Features**: Character selection, combat system, and winner determination
- **Testing**: Comprehensive acceptance tests for game flow
- **Learning Focus**: Complex user journey testing and state transitions

### Supporting Structure

#### template/
Project template providing scaffolding for new ATDD projects.
- **Purpose**: Standardized structure for creating new exercises
- **Includes**: Base Gemfile, directory structure, and configuration files

## Key Learning Concepts

### Test-Driven Development (TDD)
- Red-Green-Refactor cycle
- Unit test structure (Arrange-Act-Assert)
- Test isolation and independence

### Behavior-Driven Development (BDD)
- User story definition with Cucumber
- Gherkin syntax for readable acceptance criteria
- Living documentation through executable specifications

### Web Application Testing
- End-to-end testing with Capybara
- User interaction simulation
- Cross-browser testing strategies

### Multilingual Support
- Spanish and English feature files
- Internationalization testing approaches
- Cultural context in user acceptance criteria

## Getting Started

### Prerequisites
- Ruby (version 2.7 or higher recommended)
- Bundler gem

### Installation
```bash
cd [project-directory]
bundle install
```

### Running Tests

For unit tests (RSpec):
```bash
rspec
```

For acceptance tests (Cucumber):
```bash
cucumber
```

For web applications:
```bash
rackup  # Start the server
cucumber  # Run acceptance tests
```

## Educational Value

This repository serves as a comprehensive learning resource for:

- **Software Developers**: Learning TDD and BDD practices
- **QA Engineers**: Understanding acceptance testing strategies  
- **Team Leads**: Implementing quality-driven development processes
- **Students**: Hands-on experience with testing methodologies

Each project builds upon previous concepts, creating a progressive learning path from basic unit testing to complex web application testing scenarios.

## Best Practices Demonstrated

- Test isolation and independence
- Clear test naming conventions
- Separation of concerns in test organization
- Living documentation through executable specifications
- Continuous integration readiness
- Coverage reporting and quality metrics

## Contributing

When adding new exercises:
1. Use the template/ directory as a starting point
2. Follow the established testing patterns
3. Include both unit and acceptance tests where applicable
4. Provide clear documentation for learning objectives
