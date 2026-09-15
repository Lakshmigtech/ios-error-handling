# iOS Error & Exception Handling 

A native iOS technical showcase demonstrating structured error and exception handling using Swift.

## Technologies

* Swift
* UIKit
* MVVM
* URLSession
* Async/Await
* Result
* Codable
* Custom Error Types
* Error Mapping
* Input Validation
* Logging
* XCTest

## Architecture

The project follows a layered error-handling approach:

```text
ViewController
      ↓
ViewModel
      ↓
Service
      ↓
API Client
      ↓
Error Mapping
      ↓
Application Error
```

Errors are converted into meaningful application-level errors before being presented to the user.

## Key Implementations

* Custom application error types
* Network error handling
* HTTP status code handling
* API error mapping
* Input validation
* Async/Await error propagation
* Result-based error handling
* Error recovery strategies
* User-friendly error messages
* Centralized logging
* Separation of technical and user-facing errors
* Protocol-based dependencies
* Dependency injection
* Unit testing

## Error Categories

The implementation demonstrates handling for:

* Invalid URL
* Network connectivity failures
* Request timeout
* Invalid server response
* Unauthorized requests
* Forbidden requests
* Resource not found
* Server errors
* Decoding failures
* Validation errors
* Local storage errors
* Unknown errors

## Error Handling Flow

```text
Operation
   ↓
Technical Error
   ↓
Error Mapping
   ↓
Application Error
   ↓
Logging
   ↓
Recovery / User Message
```

## Error Recovery

The showcase demonstrates appropriate recovery strategies such as:

* Retry failed requests where appropriate
* Request authentication again after authorization failure
* Show validation messages for invalid input
* Display user-friendly network errors
* Provide fallback handling for unexpected errors
* Avoid exposing technical error details to users

## Logging

Important error events are logged with appropriate severity levels.

Logging is designed to support debugging without exposing:

* Passwords
* Access tokens
* API keys
* Personal information
* Client-specific data

## Security

This repository does not contain:

* Production credentials
* API keys
* Access tokens
* Private certificates
* Client-specific information
* Confidential application data

## Testing

The error-handling components are designed for testability using:

* Protocol-based dependencies
* Dependency injection
* Mock services
* XCTest

## Purpose

This project demonstrates practical iOS development practices for designing structured, maintainable, testable, and user-friendly error-handling solutions.

The repository is created for technical showcase purposes and does not contain production or client-specific code.
