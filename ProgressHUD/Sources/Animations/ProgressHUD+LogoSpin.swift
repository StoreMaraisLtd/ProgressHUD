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
    
    func animationLogoSpinFade(_ view: UIView) {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "Logo")
        imageView.contentMode = .scaleAspectFit
        
        let rotationAnimation = CABasicAnimation(keyPath: "transform.rotation.y")
        rotationAnimation.fromValue = 0.0
        rotationAnimation.toValue = Double.pi * 2
        rotationAnimation.duration = 2.0  // 調整旋轉速度
        rotationAnimation.repeatCount = .infinity
        imageView.layer.add(rotationAnimation, forKey: "rotationAnimation")
        view.addSubview(imageView)
    }
    
    func animationLogoBounce(_ view: UIView) {
        let width = view.frame.width
        let height = view.frame.height
        
        let image = UIImage(systemName: animationSymbol) ?? UIImage(systemName: "Logo")
        let config = UIImage.SymbolConfiguration(weight: .bold)
        
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: width, height: height))
        imageView.image = image?.applyingSymbolConfiguration(config)
        imageView.tintColor = colorAnimation
        imageView.contentMode = .scaleAspectFit
        
        if #available(iOS 17.0, *) {
            imageView.addSymbolEffect(.bounce, options: .repeating)
        }
        
        view.addSubview(imageView)
    }
}
