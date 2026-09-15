import Foundation

final class APIClient:
    APIClientProtocol {

    private let session: URLSession

    init(
        session: URLSession = .shared
    ) {

        self.session = session
    }

    func request<T: Decodable>(
        _ request: URLRequest
    ) async throws -> T {

        do {

            let (data, response) =
                try await session.data(
                    for: request
                )

            guard let httpResponse =
                    response as? HTTPURLResponse else {

                throw NetworkError.invalidResponse
            }

            guard (200...299).contains(
                httpResponse.statusCode
            ) else {

                throw NetworkErrorMapper.map(
                    statusCode:
                        httpResponse.statusCode
                )
            }

            do {

                return try JSONDecoder().decode(
                    T.self,
                    from: data
                )

            } catch {

                throw NetworkError.decoding
            }

        } catch let error as NetworkError {

            throw error

        } catch let error as URLError {

            switch error.code {

            case .notConnectedToInternet,
                 .networkConnectionLost:

                throw NetworkError.noInternet

            case .timedOut:

                throw NetworkError.timeout

            default:

                throw NetworkError.requestFailed
            }

        } catch {

            throw NetworkError.requestFailed
        }
    }
}
