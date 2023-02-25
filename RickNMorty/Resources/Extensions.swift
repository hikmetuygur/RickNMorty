//
//  Extensions.swift
//  RickNMorty
//
//  Created by huygur on 24.02.2023.
//

import UIKit

extension UIView {
    
    func addSubviews(_ views: UIView...) {
        views.forEach({
            addSubview($0)
        })
    }
    
}
