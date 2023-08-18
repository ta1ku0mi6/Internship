//
//  TabScreen.swift
//  NoStoryboard
//
//  Created by Takumi on 17/08/2023.
//

import UIKit

//画像リサイズ関数
func resizeImage(image: UIImage, targetSize: CGSize) -> UIImage {
    let size = image.size
    
    let widthRatio  = targetSize.width  / size.width
    let heightRatio = targetSize.height / size.height
    
    let newSize: CGSize
    if(widthRatio > heightRatio) {
        newSize = CGSize(width: size.width * heightRatio, height: size.height * heightRatio)
    } else {
        newSize = CGSize(width: size.width * widthRatio,  height: size.height * widthRatio)
    }
    
    let rect = CGRect(x: 0, y: 0, width: newSize.width, height: newSize.height)
    
    UIGraphicsBeginImageContextWithOptions(newSize, false, 1.0)
    image.draw(in: rect)
    let newImage = UIGraphicsGetImageFromCurrentImageContext()
    UIGraphicsEndImageContext()
    
    return newImage!
}

class TabScreen: UIViewController , UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    let items = ["Weather", "Sports", "PC　related", "Music", "Motorcycle", "Medical", "Food","Business"]
    let Img = ["Weather", "Sports", "PC related", "Music", "Motorcycle", "Medical", "Food","Business"]
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = true
        
        self.tableView.dataSource = self
        self.tableView.delegate = self
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        cell.textLabel?.text = items[indexPath.row]
        // テキストを中央揃えにする
        cell.textLabel?.textAlignment = .center
        //テキストのフォントサイズ変更
        cell.textLabel?.font = UIFont.systemFont(ofSize: 25)
        //セルの左側の画像を追加
        cell.imageView?.image = UIImage(named: Img [indexPath.row])
        if let originalImage = UIImage(named: Img[indexPath.row]) {
            // 60x60ピクセルにリサイズ
            let resizedImage = resizeImage(image: originalImage, targetSize: CGSize(width: 60, height: 60))
            cell.imageView?.image = resizedImage
            
            
        }
        
        return cell
        
    }
}
