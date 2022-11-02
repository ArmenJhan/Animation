//
//  ViewController.swift
//  Animation
//
//  Created by Armen Madoyan on 01.11.2022.
//

import UIKit
import SpringAnimation

class ViewController: UIViewController {
    
    @IBOutlet var springAnimationView: SpringView!
    
    @IBOutlet var presetLabel: UILabel!
    @IBOutlet var curveLabel: UILabel!
    @IBOutlet var forceLabel: UILabel!
    @IBOutlet var durationLabel: UILabel!
    @IBOutlet var delayLabel: UILabel!
    
    private var animation = Animation.getAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presetLabel.text = animation.preset
        curveLabel.text = animation.curve
        forceLabel.text = String(format: "%.2f", animation.force)
        durationLabel.text = String(format: "%.2f", animation.duration)
        delayLabel.text = String(format: "%.2f", animation.delay)
    }
    
    @IBAction func runSpringAnimation(_ sender: SpringButton) {

        springAnimationView.animation = animation.preset
        springAnimationView.curve = animation.curve
        springAnimationView.force = animation.force
        springAnimationView.duration = animation.duration
        springAnimationView.delay = animation.delay

        presetLabel.text = animation.preset
        curveLabel.text = animation.curve
        forceLabel.text = String(format: "%.2f", animation.force)
        durationLabel.text = String(format: "%.2f", animation.duration)
        delayLabel.text = String(format: "%.2f", animation.delay)
        
        springAnimationView.animate()
        
        animation = Animation.getAnimation()
        sender.setTitle("Run \(animation.preset)", for: .normal)
    }
}

