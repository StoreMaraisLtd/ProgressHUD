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
        let width = view.frame.width
        let height = view.frame.height
        
        let whiteBackgroundView = UIView(frame: CGRect(x: 0, y: 0, width: width, height: height))
        whiteBackgroundView.backgroundColor = .white
        whiteBackgroundView.layer.cornerRadius = height / 2
        whiteBackgroundView.clipsToBounds = true
        view.addSubview(whiteBackgroundView)
        
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: width, height: height))
        imageView.image = UIImage(named: "LogoUseWithHud")
        imageView.tintColor = colorAnimation
        imageView.contentMode = .scaleAspectFit
        
        let rotationAnimation = CABasicAnimation(keyPath: "transform.rotation.y")
        rotationAnimation.fromValue = 0.0
        rotationAnimation.toValue = Double.pi * 2
        rotationAnimation.duration = 1.45 // 調整旋轉速度x4x
        rotationAnimation.repeatCount = .infinity
        imageView.layer.add(rotationAnimation, forKey: "rotationAnimation")
        whiteBackgroundView.addSubview(imageView)
    }
}
