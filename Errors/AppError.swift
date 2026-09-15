import Foundation

enum AppError: LocalizedError {

    case validation(ValidationError)
    case network(NetworkError)
    case storage(StorageError)
    case unauthorized
    case unknown

    var errorDescription: String? {

        switch self {

        case .validation(let error):
            return error.localizedDescription

        case .network(let error):
            return error.localizedDescription

        case .storage(let error):
            return error.localizedDescription

        case .unauthorized:
            return "Your session has expired. Please login again."

        case .unknown:
            return "Something went wrong. Please try again."
        }
    }
}
