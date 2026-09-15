import Foundation

final class InputValidator:
    InputValidatorProtocol {

    func validateEmail(
        _ email: String
    ) throws {

        guard !email.isEmpty else {

            throw ValidationError.emptyField(
                "Email"
            )
        }

        let emailRegex =
            "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"

        let predicate = NSPredicate(
            format: "SELF MATCHES %@",
            emailRegex
        )

        guard predicate.evaluate(
            with: email
        ) else {

            throw ValidationError.invalidEmail
        }
    }

    func validatePassword(
        _ password: String
    ) throws {

        guard !password.isEmpty else {

            throw ValidationError.emptyField(
                "Password"
            )
        }

        guard password.count >= 8 else {

            throw ValidationError.invalidPassword
        }
    }
}
