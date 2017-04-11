//
//  ViewController.swift
//  AppPrueba
//
//  Created by Mauricio Escobar on 7/4/17.
//  Copyright © 2017 Mauricio Escobar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nuevoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func changeColor(sender: UIButton){
        // Generate Random Numbers
        let r = CGFloat(arc4random() % 255)
        let g = CGFloat(arc4random() % 255)
        let b = CGFloat(arc4random() % 255)
        
        // Create Color
        let color = UIColor(red: (r/255.0), green: (g/255.0), blue: (b/255.0), alpha: 1.0)
        
        // Update View
        view.backgroundColor = color    }
    
    @IBAction func nuevoBoton(sender: AnyObject){
        
        nuevoLabel.text = "Hola Mundo"
    }
    

}

