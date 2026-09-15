import Foundation

struct NetworkErrorMapper {

    static func map(
        statusCode: Int
    ) -> NetworkError {

        switch statusCode {

        case 401:
            return .unauthorized

        case 403:
            return .forbidden

        case 404:
            return .notFound

        case 500...599:
            return .serverError(statusCode)

        default:
            return .requestFailed
        }
    }
}
