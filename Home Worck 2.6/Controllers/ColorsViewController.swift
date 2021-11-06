//
//  ViewController.swift
//  Home Worck 2.6
//
//  Created by Ирина on 06.11.2021.
//

import UIKit

class ColorsViewController: UIViewController {

    var cololorMain: UIColor!
    var delegate: ColorsViewDelegate?
    
    @IBOutlet weak var colorsView: UIView!
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorsView.layer.cornerRadius = 10
        
        redSlider.tintColor = .red
        redSlider.thumbTintColor = .red
        
        greenSlider.tintColor = .green
        greenSlider.thumbTintColor = .green
        
        blueSlider.tintColor = .blue
        blueSlider.thumbTintColor = .blue
        
    }
    
    private func changeColor() {
        colorsView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }

    @IBAction func redAction(_ sender: Any) {
        redLabel.text = String(format: "%.2f", redSlider.value)
        changeColor()
    }
    
    @IBAction func greenAction(_ sender: Any) {
        greenLabel.text = String(format: "%.2f", greenSlider.value)
        changeColor()
    }
    
    @IBAction func blueAction(_ sender: Any) {
        blueLabel.text = String(format: "%.2f", blueSlider.value)
        changeColor()
        
    }
    
   
    @IBAction func doneButton(_ sender: UIButton) {
        delegate?.conveyColors(colors: colorsView.backgroundColor ?? .white)
        dismiss(animated: true)
    }
    
}



    




