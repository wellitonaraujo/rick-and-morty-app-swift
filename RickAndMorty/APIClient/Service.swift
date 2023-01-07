//
//  Service.swift
//  RickAndMorty
//
//  Created by Welliton da Conceicao de Araujo on 30/12/22.
//

import Foundation

final class Service {
    static let shared = Service()
    
    private init(){}
        
        enum ServiceError: Error {
            case failedToCreateRequest
            case failedToGetData
        
    }
    
    public func execute<T: Codable>(
        _ request: Request,
        expecting type: T.Type,
        completion: @escaping(Result<T, Error>) -> Void
    ) {
        guard let urlRequest = self.request(from: request) else {
            completion(.failure(ServiceError.failedToCreateRequest))
            return
        }
        
        let task = URLSession.shared.dataTask(with: urlRequest) { data, _, error in
            guard let data = data, error == nil else {
                completion(.failure(error ?? ServiceError.failedToGetData))
                return
            }
            
            // Docode response
            do {
                let result = try JSONDecoder().decode(type.self, from: data)
                completion(.success(result))
            }
            catch {
                completion(.failure(error))
            }
            
        }
        task.resume()
    }
    
    // MARK: - Private
    
    private func request(from Request: Request) -> URLRequest? {
        guard let url = Request.url else {
            return nil
            
        }
        var request = URLRequest(url: url)
        request.httpMethod = Request.httpMethod
        
        return request
    }
}
