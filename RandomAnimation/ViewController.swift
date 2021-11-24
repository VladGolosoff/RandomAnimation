//
//  ViewController.swift
//  RandomAnimation
//
//  Created by Владислав Голосов on 24.11.2021.
//

import Spring

class ViewController: UIViewController {

    //MARK: - IB Outlets
    @IBOutlet weak var presetLabel: SpringLabel!
    @IBOutlet weak var curveLabel: SpringLabel!
    @IBOutlet weak var forceLabel: SpringLabel!
    @IBOutlet weak var durationLabel: SpringLabel!
    @IBOutlet weak var delayLabel: SpringLabel!
    
    @IBOutlet weak var animationView: SpringView!
    
    @IBOutlet weak var runButton: SpringButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presetLabel.text = "preset: fadeInUp"
        curveLabel.text = "curve: easeOutCirc"
        forceLabel.text = ""
    }

    
    //MARK: - IB Actions
    @IBAction func runAnimation(_ sender: SpringButton) {
        runButton.setTitle(<#T##title: String?##String?#>, for: .normal)
    }
    
}

