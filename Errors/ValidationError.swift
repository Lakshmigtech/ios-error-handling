import Foundation

enum ValidationError: LocalizedError {

    case emptyField(String)
    case invalidEmail
    case invalidPassword
    case invalidInput

    var errorDescription: String? {

        switch self {

        case .emptyField(let field):
            return "\(field) is required."

        case .invalidEmail:
            return "Please enter a valid email address."

        case .invalidPassword:
            return "Password does not meet the required format."

        case .invalidInput:
            return "The entered information is invalid."
        }
    }
}
