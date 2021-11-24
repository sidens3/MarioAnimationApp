//
//  ViewController.swift
//  MarioAnimationMap
//
//  Created by Михаил Зиновьев on 24.11.2021.
//

import Spring

class MarioViewController: UIViewController {

    @IBOutlet weak var animationInfoLabel: UILabel!
    @IBOutlet weak var marioImage: SpringImageView!
    @IBOutlet weak var animationButton: UIButton!
    
    private let animationManager = AnimationDataManager.shared
    private var currentAnimation: Animation?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureNextAnimation()
        updateUI()
    }

    @IBAction func animationButtonPressed() {
        print("Animation button pressed")
        animateMarioImage()
        
        configureNextAnimation()
        updateUI()
    }
    
    private func animateMarioImage() {
        guard let animation = currentAnimation else { return }
        marioImage.animation = animation.animationType
        marioImage.curve = animation.curve
        marioImage.force = CGFloat(animation.force)
        marioImage.duration = CGFloat(animation.duration)
        marioImage.delay = CGFloat(animation.delay)
        
        marioImage.animate()
    }
    
    private func configureNextAnimation() {
        currentAnimation = Animation.getAnimation()
    }
    
    private func updateUI() {
        DispatchQueue.main.async { [weak self] in
            self?.animationButton.titleLabel?.text = self?.currentAnimation?.animationType
            self?.animationInfoLabel.text = self?.currentAnimation?.info
        }
    }
}

