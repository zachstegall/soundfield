//
//  ViewController.swift
//  Soundfield
//
//  Created by Zachary Stegall on 1/26/18.
//  Copyright © 2018 Zachary Stegall. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var welcomeLabel: UILabel!
    @IBOutlet weak var instructionsLabel: UILabel!
    @IBOutlet weak var connectButton: UIButton!

    var hasAnimatedUI: Bool = false

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        hideUI()
    }

    override func viewDidAppear(_ animated: Bool) {
        if !hasAnimatedUI {
            showUI()
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func hideUI() {
        welcomeLabel.alpha = 0.0
        instructionsLabel.alpha = 0.0
        connectButton.alpha = 0.0
    }

    func showUI() {
        hasAnimatedUI = true
        let duration = 0.75
        let delay = 0.5

        func animateWelcome() {
            UIView.animate(withDuration: duration, delay: delay, options: UIViewAnimationOptions(rawValue: 0), animations: {
                self.welcomeLabel.alpha = 1.0
            }, completion: animateInstructions)
        }

        func animateInstructions(finished: Bool) {
            UIView.animate(withDuration: duration, delay: delay, options: UIViewAnimationOptions(rawValue: 0), animations: {
                self.instructionsLabel.alpha = 1.0
            }, completion: animateConnect)
        }

        func animateConnect(finished: Bool) {
            UIView.animate(withDuration: duration, delay: delay, options: UIViewAnimationOptions(rawValue: 0), animations: {
                self.connectButton.alpha = 1.0
            }, completion: nil)
        }

        animateWelcome()
    }
    

}

