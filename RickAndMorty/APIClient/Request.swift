//
//  Request.swift
//  RickAndMorty
//
//  Created by Welliton da Conceicao de Araujo on 30/12/22.
//

import Foundation

/// Object that represents a singlet API call
final class Request {
    private struct Constants {
        static let baseURL =  "https://rickandmortyapi.com/api"
    }
    
    private let endpoint: Endpoint
    private let pathComponents: [String]
    private let queryParamenters: [URLQueryItem]
    
    /// Constructed url for the api request in string format
    private var urlString: String {
        var string = Constants.baseURL
        string += "/"
        string += endpoint.rawValue
        
        if !pathComponents.isEmpty {
            pathComponents.forEach({
                string += "/\($0)"
            })
        }
        
        if !queryParamenters.isEmpty {
            string += "?"
            let argumentString = queryParamenters.compactMap({
                guard let value = $0.value else { return nil }
                        return "\($0.name)=\(value)"
            }).joined(separator: "&")
            
            string += argumentString
        }
        
        return string
    }
    
    public var url: URL? {
        return URL(string: urlString)
    }
    
    public let httpMethod = "GET"
    
    // MARK: - Public
    
   public init(
        endpoint: Endpoint,
        pathComponents: [String] = [],
        queryParamenters: [URLQueryItem] = []
    ) {
        self.endpoint = endpoint
        self.pathComponents = pathComponents
        self.queryParamenters = queryParamenters
    }
    
}

extension Request {
    static let listCharactersRequest =  Request(endpoint: .character)
}
