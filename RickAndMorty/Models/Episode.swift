//
//  Episode.swift
//  RickAndMorty
//
//  Created by Welliton da Conceicao de Araujo on 30/12/22.
//

import Foundation

struct Episode: Codable {
    let id: Int
    let name: String
    let air_date: String
    let episode: String
    let characters: [String]
    let url: String
    let created: String
}

