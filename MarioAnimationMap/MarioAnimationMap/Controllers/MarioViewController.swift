//
//  ViewController.swift
//  MarioAnimationMap
//
//  Created by Михаил Зиновьев on 24.11.2021.
//

import UIKit

class MarioViewController: UIViewController {

    @IBOutlet weak var AnimationInfoLabel: UILabel!
    @IBOutlet weak var marioImage: UIImageView!
    @IBOutlet weak var animationButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func animationButtonPressed() {
        print("Animation button pressed")
    }
}

