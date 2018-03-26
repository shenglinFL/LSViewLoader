//
//  ViewController.swift
//  LSViewLoader
//
//  Created by 林盛 on 2018/3/25.
//  Copyright © 2018年 linsheng. All rights reserved.
//

import UIKit
import MBProgressHUD
class ViewController: UIViewController {

    let tableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.tableView.frame = self.view.bounds
        self.view.addSubview(self.tableView)
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.register(UITableViewCell.self , forCellReuseIdentifier: "cell")
        
        var images:[UIImage] = []
        for i in 1...12 {
            images.append(UIImage(named: "img_loading_\(i)")!)
        }
        MBProgressHUD.setAnimateImages(images: images)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "detail"
        return cell
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        let detailVC = DetailViewController(type: .activity)
        self.navigationController?.pushViewController(detailVC, animated: true)
    }
}


