import Foundation

enum StorageError: LocalizedError {

    case saveFailed
    case readFailed
    case deleteFailed
    case dataNotFound

    var errorDescription: String? {

        switch self {

        case .saveFailed:
            return "Unable to save the data."

        case .readFailed:
            return "Unable to read the stored data."

        case .deleteFailed:
            return "Unable to delete the stored data."

        case .dataNotFound:
            return "Requested data was not found."
        }
    }
}
