//
//  ViewController.swift
//  MyBullsEye
//
//  Created by Eric Grant on 03.04.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var slider: UISlider!
    
    var currentValue: Int = 0
    var targetValue = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        startNewRound()
    }
    
    @IBAction func showAlert() {
        let message = "The value of the slider is: \(currentValue)" +
          "\nThe target value is: \(targetValue)"
        
        let alert = UIAlertController(
            title: "Hello, World",
            message: message,
            preferredStyle: .alert)
        
        let action = UIAlertAction(
            title: "Ok",
            style: .default,
            handler: nil)
        
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
        
        startNewRound()
    }
    
    @IBAction func sliderMoved(_ slider: UISlider) {
        currentValue = lroundf(slider.value)
    }
    
    func startNewRound() {
        targetValue = Int.random(in: 1...100)
        currentValue = 75
        slider.value = Float(currentValue)
    }
}

