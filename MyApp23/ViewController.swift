//
//  ViewController.swift
//  MyApp23
//
//  Created by iii-user on 2017/7/5.
//  Copyright © 2017年 iii-user. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @objc private func back(){
        print("1")
    }
    @objc private func setting(){
        navigationController!.pushViewController(P2ViewController(), animated: false)
    }
    @objc private func gotop1(){
        navigationController!.pushViewController(P1ViewController(), animated: false)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //針對 Navigation Bar 的相關設定
        title = "我是首頁"
        navigationController!.navigationBar.barTintColor = UIColor.yellow
        navigationController!.navigationBar.isTranslucent = false
        let backButton = UIBarButtonItem(image: UIImage(named:"back.png"), style: .plain, target: self, action: #selector(back))
        
        //left button
        navigationItem.leftBarButtonItem = backButton
        
        //right button
        let setingButton = UIBarButtonItem(title: "設定", style: .plain, target: self, action: #selector(setting))
        navigationItem.rightBarButtonItem = setingButton
        
        //以下處理該頁的主要內容
        let p1Button = UIButton(frame: CGRect(x: 40, y: 40, width: 80, height: 80))
        p1Button.setTitle("去 p1", for: .normal)
        p1Button.backgroundColor = UIColor.blue
        p1Button.addTarget(self, action: #selector(gotop1), for: .touchUpInside)
        
        view.addSubview(p1Button)
        
        
        
        
        
        
        
    }

   

}

