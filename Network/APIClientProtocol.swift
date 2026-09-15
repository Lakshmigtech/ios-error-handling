import Foundation

protocol APIClientProtocol {

    func request<T: Decodable>(
        _ request: URLRequest
    ) async throws -> T
}
