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
        
        let bgWidth = width + 30
        let bgHeight = height + 30
        
        let bgGap: CGFloat = -30 / 2
        
        let whiteBackgroundView = UIView(frame: CGRect(x: bgGap, y: bgGap, width: bgWidth, height: bgHeight))
        whiteBackgroundView.backgroundColor = .white
        whiteBackgroundView.layer.cornerRadius = bgHeight / 2
        whiteBackgroundView.clipsToBounds = true
        view.addSubview(whiteBackgroundView)
        
        let imageGap: CGFloat = 30 / 2
        
        let imageView = UIImageView(frame: CGRect(x: imageGap, y: imageGap, width: width, height: height))
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
