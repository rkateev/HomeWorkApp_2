//
//  ViewController.swift
//  HomeWorkApp_2
//
//  Created by  Husein on 08.07.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var redLight: UIView!
    @IBOutlet weak var yellowLight: UIView!
    @IBOutlet weak var greenLight: UIView!
    @IBOutlet weak var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLight.layer.cornerRadius = 50
        yellowLight.layer.cornerRadius = 50
        greenLight.layer.cornerRadius = 50
        redLight.alpha = 0.3
        yellowLight.alpha = 0.3
        greenLight.alpha = 0.3
    }


    @IBAction func pressButton() {
        let colors = (redLight.alpha, yellowLight.alpha, greenLight.alpha)
        switch colors{
        case (1, _, _):
            redLight.alpha = 0.3
            yellowLight.alpha = 1
        case (_, 1, _):
            yellowLight.alpha = 0.3
            greenLight.alpha = 1
        case (_, _ , 1):
            greenLight.alpha = 0.3
            redLight.alpha = 1
        default:
            redLight.alpha = 1
        }
        startButton.setTitle("Next", for: .normal)
    }
    
    
    
}

