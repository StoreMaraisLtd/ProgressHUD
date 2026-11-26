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
        // 陰影：不可 clipsToBounds（會把陰影裁掉）；Logo 本身在圓內，不需要裁切。
        // 指定 shadowPath 讓系統不必每幀依內容計算陰影形狀（Logo 持續旋轉，效能較好）
        whiteBackgroundView.layer.shadowColor = logoShadowColor.cgColor
        whiteBackgroundView.layer.shadowOpacity = logoShadowOpacity
        whiteBackgroundView.layer.shadowRadius = logoShadowRadius
        whiteBackgroundView.layer.shadowOffset = logoShadowOffset
        whiteBackgroundView.layer.shadowPath = UIBezierPath(ovalIn: CGRect(x: 0, y: 0, width: bgWidth, height: bgHeight)).cgPath
        whiteBackgroundView.layer.borderColor = UIColor.init(white: 0.9, alpha: 0.9).cgColor
        whiteBackgroundView.layer.borderWidth = 0.2
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
