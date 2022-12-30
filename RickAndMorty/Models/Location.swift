//
//  Location.swift
//  RickAndMorty
//
//  Created by Welliton da Conceicao de Araujo on 30/12/22.
//

import Foundation

struct Location: Codable {
    let id: Int
    let name: String
    let type: String
    let deminsion: String
    let residents: [String]
    let url: String
    let created: String
}
