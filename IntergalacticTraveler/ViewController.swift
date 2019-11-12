//
//  ViewController.swift
//  IntergalacticTraveler
//
//  Created by TobyFischer on 11/5/19.
//  Copyright © 2019 John Hersey High School. All rights reserved.
//this is cool

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var colorTextfield: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if let data = colorTextfield.text,data != "Blue && Red" {
        let nameofColor = colorTextfield.text!
         let NVC =  segue.destination as! SecondViewController
         NVC.starColor = data
    } else {
            let alert = UIAlertController (title: "Error", message: "There was no data", preferredStyle: .alert)
            let button = UIAlertAction (title: "Ok", style: .default, handler: nil)
            alert.addAction(button)
            present(alert, animated: true, completion: nil)
    
    }
 
        
        
    }




}
