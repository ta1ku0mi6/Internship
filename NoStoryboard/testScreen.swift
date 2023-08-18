//
//  testScreen.swift
//  NoStoryboard
//
//  Created by Takumi on 17/08/2023.
//

import UIKit

class testScreen: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    
    @IBAction func loginbutton(_ sender: Any) {
        // XIBから遷移先のビューコントローラーをインスタンス化
        let tabscreenVC = TabScreen(nibName: "TabScreen", bundle: nil)
        
        // 遷移
        self.navigationController?.pushViewController(tabscreenVC, animated: true)
    }
}


