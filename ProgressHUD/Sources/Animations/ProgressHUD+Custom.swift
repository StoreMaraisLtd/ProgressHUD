//
//  ProgressHUD+LogoSpin.swift
//  app
//
//  Created by Jimmy on 2025/3/13.
//  Copyright © 2025 KZ. All rights reserved.
//

import UIKit

// MARK: - Logo Animation
extension ProgressHUD {
    
    func showCustomImage(_ view: UIView, imageView: UIImageView) {
        let width = view.frame.width
        let height = view.frame.height
        
        let config = UIImage.SymbolConfiguration(weight: .bold)

        let imageView = imageView
        imageView.frame = .init(x: 0, y: 0, width: width, height: height)
        imageView.image?.applyingSymbolConfiguration(config)
        imageView.tintColor = colorAnimation
        imageView.contentMode = .scaleAspectFit
        
        if #available(iOS 17.0, *) {
            imageView.addSymbolEffect(.bounce, options: .repeating)
        }
        
        view.addSubview(imageView)
    }
}
