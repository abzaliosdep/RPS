//
//  ViewController.swift
//  RPS
//
//  Created by АБЗАЛ АБЗАЛ on 08.09.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var rpsImageView1: UIImageView!
    @IBOutlet weak var rpsImageView2: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var throwButton: UIButton!
    
    
    let images = [
    UIImage(named: "1"),
    UIImage(named: "2"),
    UIImage(named: "3"),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        rpsImageView1.image = UIImage(named: "1")
        rpsImageView2.image = UIImage(named: "1")
        
        titleLabel.text = "Cу-ли-фа"
        throwButton.backgroundColor = UIColor.gray
        
    }

    @IBAction func throwButtonTapped(_ sender: Any) {
        print("Погнали!")
        rpsImageView1.image = images[randomImageIndex()]
        rpsImageView2.image = images[randomImageIndex()]
    }
            
            func randomImageIndex() -> Int {
                return Int.random(in: 0..<images.count)
            }
            
}

