//
//  Service.swift
//  RickAndMorty
//
//  Created by Welliton da Conceicao de Araujo on 30/12/22.
//

import Foundation

final class Service {
    static let shared = Service()
    
    private init(){
        
    }
    
    public func execute<T: Codable>(
        _ request: Request,
        expecting type: T.Type,
        completion: @escaping(Result<T, Error>) -> Void
    ) {
        
    }
}
