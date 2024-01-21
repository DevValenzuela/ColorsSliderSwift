//
//  ViewController.swift
//  ColorsSlider
//
//  Created by David Valenzuela Pardo on 21/01/24.
//

import UIKit

class ViewController: UIViewController {
    
    var red: Float = 0
    var green: Float = 0;
    var blue: Float = 0;

    @IBOutlet weak var redSlider: UISlider!
    
    @IBOutlet weak var greenSlider: UISlider!
    
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var labelText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        valores()
        // Do any additional setup after loading the view.
    }

    @IBAction func redAction(_ sender: UISlider) {
        red = sender.value
        colorsGenerate(red: CGFloat(red), green: CGFloat(green), blue: CGFloat(blue))
        UserDefaults.standard.set(red, forKey: "red")
    }
    
    @IBAction func greenAction(_ sender: UISlider) {
        green = sender.value
        colorsGenerate(red: CGFloat(red), green: CGFloat(green), blue: CGFloat(blue))
        UserDefaults.standard.set(green, forKey: "green")
    }
    
    @IBAction func blueAction(_ sender: UISlider) {
        blue = sender.value
        colorsGenerate(red: CGFloat(red), green: CGFloat(green), blue: CGFloat(blue))
        UserDefaults.standard.set(blue, forKey: "blue")
    }
    
    func colorsGenerate(red: CGFloat, green: CGFloat, blue: CGFloat){
        view.backgroundColor = UIColor(red: red/255, green: green/255, blue: blue/255, alpha: 1.0)
    }
    
    func valores(){
        if let r = UserDefaults.standard.object(forKey: "red") as? CGFloat,
           let g = UserDefaults.standard.object(forKey: "green") as? CGFloat,
           let b = UserDefaults.standard.object(forKey: "blue") as? CGFloat {
            colorsGenerate(red: r, green: g, blue: b)
            
            redSlider.value = Float(r)
            blueSlider.value = Float(b)
            greenSlider.value = Float(g)
        }
    }
    
}

