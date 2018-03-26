//
//  DetailViewController.swift
//  TestHUD
//
//  Created by Lin Sheng on 2018/3/26.
//  Copyright © 2018年 linsheng. All rights reserved.
//

import UIKit
import MBProgressHUD

enum ShowType {
    case activity
    case animate
    case graceActivity
    case graceAnimate
}

class DetailViewController: UIViewController {
    
    private var type: ShowType = .activity
    
    init(type: ShowType) {
        super.init(nibName: nil, bundle: nil)
        self.type = type
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title = "Detail"
        self.view.backgroundColor = .white//.blue
        
        
        
        
//        MBProgressHUD.xrj_showHUDActivity(superView: self.view)
//        MBProgressHUD.xrj_showGraceHUD(superView: self.view)
//        MBProgressHUD.xrj_showAnimateHUD(superView: self.view)
        
//        switch self.type {
//        case .activity:
//            MBProgressHUD.xrj_showHUDActivity(superView: self.view)
//        default:
//
//        }
//        MBProgressHUD.ls_showHUD(superView: self.view)
        MBProgressHUD.ls_showText(superView: self.view, title: "Title", detail: "Detail", superViewInteractionEnabled: true, graceTime: 1)

        
        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
            self.view.backgroundColor = .red
            MBProgressHUD.xrj_hideHUD(superView: self.view)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
