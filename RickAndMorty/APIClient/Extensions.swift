//
//  Extensions.swift
//  RickAndMorty
//
//  Created by Welliton da Conceicao de Araujo on 07/01/23.
//

import UIKit

extension UIView {
    func addSubviews(_ views: UIView...) {
        views.forEach({
            self.addSubview($0)
        })
    }
}
