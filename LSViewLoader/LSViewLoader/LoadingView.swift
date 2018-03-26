
//
//  LoadingView.swift
//  TestHUD
//
//  Created by Lin Sheng on 2018/3/26.
//  Copyright © 2018年 linsheng. All rights reserved.
//

import MBProgressHUD

enum LSHUDMode {
    case indeterminate
    case determinate
    case determinateHorizontalBar
    case annularDeterminate
    case customView
    case text
}

extension MBProgressHUD {
    
    private static var animateImages:[UIImage] = []
    
    public static func xrj_showHUDActivity(superView: UIView) {
        
        let hud = MBProgressHUD.showAdded(to: superView, animated: true)
        hud.mode = .customView
        let activity = UIActivityIndicatorView(activityIndicatorStyle: .gray)
        activity.startAnimating()
        
        hud.bezelView.style = .solidColor
        hud.bezelView.color = .clear
        hud.isSquare = true
        hud.customView = activity
    }
    
    public static func xrj_hideHUD(superView: UIView) {
        MBProgressHUD.hide(for: superView, animated: true)
    }
    
    public static func xrj_showGraceHUD(superView: UIView, graceTime: TimeInterval = 0.5) {
        let hud = MBProgressHUD(view: superView)
        hud.removeFromSuperViewOnHide = true
        hud.graceTime = graceTime
        superView.addSubview(hud)
        hud.show(animated: true)
    }
    
    public static func xrj_showAnimateHUD(superView: UIView, graceTime: TimeInterval = 0.5) {
        let hud = MBProgressHUD(view: superView)
        hud.removeFromSuperViewOnHide = true
        hud.graceTime = graceTime
        superView.addSubview(hud)
        
        hud.mode = .customView
        let imageView = UIImageView()
        var images:[UIImage] = []
        for i in 1...12 {
            images.append(UIImage(named: "img_loading_\(i)")!)
        }
        imageView.image = UIImage(named: "img_loading_3")
        imageView.animationImages = animateImages//images
        imageView.animationDuration = 1
        imageView.animationRepeatCount = 0
        imageView.startAnimating()
        
        
        hud.customView = imageView
        hud.isSquare = true
        hud.show(animated: true)
        
    }
    
    
    
    public static func setAnimateImages(images: [UIImage] = []) {
        MBProgressHUD.animateImages = images
    }
    
    
    public static func ls_setCustomView(customView: UIView) {
        
    }
    
    // MARK: - 纯文本
    public static func ls_showText(superView: UIView, title: String? = nil, detail: String? = nil, superViewInteractionEnabled: Bool = true, graceTime: TimeInterval = 0) {
        let hud = MBProgressHUD(view: superView)
        hud.removeFromSuperViewOnHide = true
        hud.mode = .text
        hud.label.text = title
        hud.detailsLabel.text = detail
        hud.isUserInteractionEnabled = !superViewInteractionEnabled
        hud.graceTime = graceTime
        
        hud.isSquare = true
        
        superView.addSubview(hud)
        hud.show(animated: true)
    }
}
