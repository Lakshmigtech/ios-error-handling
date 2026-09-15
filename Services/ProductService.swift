import Foundation

final class ProductService:
    ProductServiceProtocol {

    private let apiClient:
        APIClientProtocol

    init(
        apiClient: APIClientProtocol
    ) {

        self.apiClient = apiClient
    }

    func fetchProducts()
        async throws -> [Product] {

        guard let url = URL(
            string:
                "https://example.com/products"
        ) else {

            throw NetworkError.invalidURL
        }

        let request = URLRequest(
            url: url
        )

        return try await apiClient.request(
            request
        )
    }
}
