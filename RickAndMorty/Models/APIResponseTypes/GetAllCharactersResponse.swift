//
//  GetCharactersResponse.swift
//  RickAndMorty
//
//  Created by Welliton da Conceicao de Araujo on 02/01/23.
//

import Foundation

struct GetAllCharactersResponse: Codable {
    struct Info: Codable {
        let count: Int
        let pages: Int
        let next: String?
        let prev: String?
    }
    
    let info: Info
    let results: [Character]
}
