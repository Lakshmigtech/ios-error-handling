import Foundation

enum NetworkError: Error {

    case invalidURL
    case noInternet
    case timeout
    case invalidResponse
    case unauthorized
    case forbidden
    case notFound
    case serverError(Int)
    case decoding
    case requestFailed
}
