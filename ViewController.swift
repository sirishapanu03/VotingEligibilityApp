//
//  ViewController.swift
//  VotingeligibilityApp
//
//  Created by Panuganti,Sirisha on 9/5/23.
//
import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var outputOL: UILabel!

    @IBOutlet weak var ageInputOL: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonClick(_ sender: Any) {

        //get input and
        
        var age = Double(ageInputOL.text!) ?? 0

        //check for eligibility
        //assin to output ol
        if(age<0){
            outputOL.text = "Enter a valid age"
        }
        else if(age < 18){
            outputOL.text = "You are not eligible to vote"
        }else if(age >= 18){
            outputOL.text = "Your are eligible to vote"
        }

    }
}
