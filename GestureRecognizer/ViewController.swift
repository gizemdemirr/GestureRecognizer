//
//  ViewController.swift
//  GestureRecognizer
//
//  Created by Gizem on 15.06.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var myLabel: UILabel!
    
    var isTavsan = true
    override func viewDidLoad() {
        super.viewDidLoad()
//        görseli tıklanabilir yapmak
        imageView.isUserInteractionEnabled = true
//        gesturerecognizer oluşturmak
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changePic))
        imageView.addGestureRecognizer(gestureRecognizer)
    }
//    objc istediğinde bu şekilde fonksiyon tanımlanır.görsele tıklandığında bu fonksiyon çalışır
    @objc func changePic() {
        
        if isTavsan == true {
            imageView.image = UIImage(named: "tavsan2")
            myLabel.text = "tavşan 2"
            isTavsan = false
        }else {
            imageView.image = UIImage(named: "tavsan1")
            myLabel.text = "tavşan"
            isTavsan = true
            
        }
        
        
    }


}

