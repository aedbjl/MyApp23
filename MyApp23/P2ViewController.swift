//
//  P2ViewController.swift
//  MyApp23
//
//  Created by iii-user on 2017/7/5.
//  Copyright © 2017年 iii-user. All rights reserved.
//

import UIKit

class P2ViewController: UIViewController {

    @objc private func gohome(){
        navigationController!.popViewController(animated: true)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        title = "setting"
        navigationController?.navigationBar.barTintColor = UIColor.white
        
        let homeButton = UIButton(frame: CGRect(x: 40, y: 40, width: 80, height: 80))
        homeButton.setTitle("home", for: .normal)
        homeButton.backgroundColor = UIColor.blue
        homeButton.addTarget(self, action: #selector(gohome), for: .touchUpInside)
        
        
        
        
        
        
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
