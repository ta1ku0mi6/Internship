//
//  ViewController.swift
//  NoStoryboard
//
//  Created by Takumi on 17/08/2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = true
        //tableView.dataSource = self
        //tableView.delegate = self
        //tableView.register(UINib(nibName: "TabView", bundle: nil), forCellReuseIdentifier: "TabView")

    }


}
/*
 extension ViewController: UITableViewDataSource,UITableViewDelegate {
 func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
 return 7
 }
 func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
 let cell = tableView.dequeueReusableCell(withIdentifier: "TabView") as! TabView
 return cell
 }
 
 }
 */
