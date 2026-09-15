import XCTest

final class InputValidatorTests:
    XCTestCase {

    private let validator =
        InputValidator()

    func testValidEmail() throws {

        XCTAssertNoThrow(
            try validator.validateEmail(
                "demo@example.com"
            )
        )
    }

    func testInvalidEmail() {

        XCTAssertThrowsError(
            try validator.validateEmail(
                "invalid-email"
            )
        )
    }

    func testEmptyPassword() {

        XCTAssertThrowsError(
            try validator.validatePassword(
                ""
            )
        )
    }

    func testShortPassword() {

        XCTAssertThrowsError(
            try validator.validatePassword(
                "123"
            )
        )
    }
}
