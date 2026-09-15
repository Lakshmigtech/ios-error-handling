import Foundation

protocol InputValidatorProtocol {

    func validateEmail(
        _ email: String
    ) throws

    func validatePassword(
        _ password: String
    ) throws
}
