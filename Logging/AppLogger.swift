import Foundation
import OSLog

final class AppLogger {

    static let shared = AppLogger()

    private let logger =
        Logger(
            subsystem: "iOS.ErrorHandling.Showcase",
            category: "Application"
        )

    private init() {}

    func log(
        _ message: String,
        level: LogLevel
    ) {

        switch level {

        case .debug:
            logger.debug("\(message)")

        case .info:
            logger.info("\(message)")

        case .warning:
            logger.warning("\(message)")

        case .error:
            logger.error("\(message)")
        }
    }
}
