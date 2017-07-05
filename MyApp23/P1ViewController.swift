//
//  P1ViewController.swift
//  MyApp23
//
//  Created by iii-user on 2017/7/5.
//  Copyright © 2017年 iii-user. All rights reserved.
//

import UIKit

class P1ViewController: UIViewController {

    @objc private func edit(){
        
    }
    
    @objc private func setting(){
        navigationController!.pushViewController(P2ViewController(), animated: false)
    }

    
    @objc private func back(){
        navigationController!.popViewController(animated: false)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.lightGray
        
        //navigation bar
        title = "he he ha ha"
        
        navigationController!.navigationBar.barTintColor = UIColor.green
        navigationController!.navigationBar.isTranslucent = false
        
        let rightButton = UIBarButtonItem(barButtonSystemItem: .edit, target: self, action: #selector(edit))
        
        navigationItem.rightBarButtonItem = rightButton
        
        let backButton = UIBarButtonItem(image: UIImage(named:"back.png"), style: .plain, target: self, action: #selector(back))
        let setingButton = UIBarButtonItem(title: "設定", style: .plain, target: self, action: #selector(setting))
        navigationItem.rightBarButtonItem = setingButton
        
        
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
