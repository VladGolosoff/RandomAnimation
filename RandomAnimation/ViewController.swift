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
 
    //MARK: - Public Properties
    
    var animations = ["shake",
                      "pop",
                      "morph",
                      "squeeze",
                      "wobble",
                      "swing",
                      "flipX",
                      "flipY",
                      "fall",
                      "squeezeLeft",
                      "squeezeRight",
                      "squeezeDown",
                      "squeezeUp",
                      "slideLeft",
                      "slideRight",
                      "slideDown",
                      "slideUp",
                      "fadeIn",
                      "fadeOut",
                      "fadeInLeft",
                      "fadeInRight",
                      "fadeInDown",
                      "fadeInUp",
                      "zoomIn",
                      "zoomOut",
                      "flash"]
  
    var curves = ["spring",
                  "linear",
                  "easeIn",
                  "easeOut",
                  "easeInOut"]
    
    var force = Double.random(in: 0.8...2)
    var duration = Double.random(in: 0.8...2)
    var delay = Double.random(in: 0.3...1)
    
    //MARK: - Ovveride Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presetLabel.text = "preset: \(animations[0])"
        curveLabel.text = "curve: \(curves[0])"
        forceLabel.text = "force: " + String(format: "%.2F", force)
        durationLabel.text = "duration: " + String(format: "%.2F", duration)
        delayLabel.text = "delay: " + String(format: "%.2F", delay)
    }

    //MARK: - IB Actions
    
    @IBAction func runAnimation(_ sender: SpringButton) {
        animationView.animation = animations[0]
        animationView.curve = curves[0]
        animationView.force = force
        animationView.duration = duration
        animationView.delay = delay
        animationView.animate()
        
        presetLabel.text = "preset: \(animations[0])"
        curveLabel.text = "curve: \(curves[0])"
        forceLabel.text = "force: " + String(format: "%.2F", force)
        durationLabel.text = "duration: " + String(format: "%.2F", duration)
        delayLabel.text = "delay: " + String(format: "%.2F", delay)
        
        animations.shuffle()
        curves.shuffle()
        force = Double.random(in: 0.8...2)
        duration = Double.random(in: 0.8...2)
        delay = Double.random(in: 0.3...1)
        
        runButton.setTitle("Next \(animations[0])", for: .normal)
    }
    
}

