//
//  NavigationViewController.swift
//  Home Worck 2.6
//
//  Created by Ирина on 06.11.2021.
//

import UIKit

protocol ColorsViewDelegate {
    
func conveyColors(colors: UIColor)
}

class NavigationViewController: UIViewController, ColorsViewDelegate {

    func conveyColors(colors: UIColor) {
        viewColors.backgroundColor = colors
    }
    
    @IBOutlet weak var viewColors: UIView!
        
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let colorVC = segue.destination as! ColorsViewController
        colorVC.delegate = self
        colorVC.cololorMain = view.backgroundColor
    }
}
    
    

 

