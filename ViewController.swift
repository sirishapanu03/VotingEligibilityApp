//
//  ViewController.swift
//  ImageDisplay
//
//  Created by Panuganti,Sirisha on 10/3/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBOutlet weak var brandOL: UITextField!
    
    @IBOutlet weak var modelOL: UITextField!
    
    @IBOutlet weak var priceOL: UITextField!
    
    @IBOutlet weak var imageOL: UIImageView!
    
    
    @IBOutlet weak var outputOL: UILabel!
    
    
    @IBAction func calcPricewithTax(_ sender: Any) {
        
        var brand = brandOL.text!
        var model = modelOL.text!
        var price = Double(priceOL.text!) ?? 0
        
        
        if(brand == "hp"){
            imageOL.image = UIImage(named: "pic01")
            
            var tax = price * (0.10)
            var totalPrice = price + tax
            outputOL.text! = "Total price for \(brand) and \(model) is \(totalPrice)"
        }
        
        if(brand == "dell"){
            imageOL.image = UIImage(named: "pic02")
            var tax = price * (0.09)
            var totalPrice = price + tax
            outputOL.text! = "Total price for \(brand) and \(model) is \(totalPrice)"
        }
        if(brand == "apple"){
            imageOL.image = UIImage(named: "pic03")
            var tax = price * (0.12)
            var totalPrice = price + tax
            outputOL.text! = "Total price for \(brand) and \(model) is \(totalPrice)"
        }
        if(brand == "lenovo"){
            imageOL.image = UIImage(named: "pic04")
            var tax = price * (0.11)
            var totalPrice = price + tax
            outputOL.text! = "Total price for \(brand) and \(model) is \(totalPrice)"
        }
    }
    
    
    
    
    
}

