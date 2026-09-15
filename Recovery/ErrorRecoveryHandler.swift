import Foundation

final class ErrorRecoveryHandler {

    func shouldRetry(
        error: NetworkError
    ) -> Bool {

        switch error {

        case .noInternet,
             .timeout,
             .serverError:

            return true

        case .invalidURL,
             .invalidResponse,
             .unauthorized,
             .forbidden,
             .notFound,
             .decoding,
             .requestFailed:

            return false
        }
    }
}
