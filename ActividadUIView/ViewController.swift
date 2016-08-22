//
//  ViewController.swift
//  ActividadUIView
//
//  Created by alumno on 8/22/16.
//  Copyright © 2016 bernardo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var sldMoving: UISlider!
    @IBOutlet weak var imageForSlider: UIImageView!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var stpForBar: UIStepper!
    @IBOutlet weak var segCtrlBackground: UISegmentedControl!
    @IBOutlet weak var viewForBackground: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageForSlider.image = UIImage(named: "money")
        viewForBackground.backgroundColor = UIColor(red: 0, green: 0, blue: 1, alpha: 1)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func changeImagePositionFromSlider(sender: UISlider) {
        let sliderValue: CGFloat = CGFloat(sldMoving.value)
        let screenSize: CGRect = UIScreen.mainScreen().bounds
        imageForSlider.frame = CGRect(x: sliderValue * (screenSize.width - (screenSize.width - sldMoving.frame.size.width)), y: imageForSlider.frame.origin.y, width: imageForSlider.frame.size.width, height: imageForSlider.frame.size.height)
    }

    @IBAction func changeProgressBar(sender: UIStepper) {
        progressBar.setProgress(Float(stpForBar.value/100), animated: true)
    }
    
    @IBAction func changeBackgroundColor(sender: UISegmentedControl) {
        switch segCtrlBackground.selectedSegmentIndex {
            case 0:
                viewForBackground.backgroundColor = UIColor(red: 0, green: 0, blue: 1, alpha: 1)
                break
            case 1:
                viewForBackground.backgroundColor = UIColor(red: 1, green: 1, blue: 0, alpha: 1)
            default:
                break
        }
    }
}

