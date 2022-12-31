//
//  CharacterViewController.swift
//  RickAndMorty
//
//  Created by Welliton da Conceicao de Araujo on 30/12/22.
//

import UIKit

final class CharacterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBackground
        title = "Characters"
        
        let request = Request(endpoint: .character)
        
        print(request.url)
        
        Service.shared.execute(request, expecting: String.self) { result in
            
        }
    }

}
