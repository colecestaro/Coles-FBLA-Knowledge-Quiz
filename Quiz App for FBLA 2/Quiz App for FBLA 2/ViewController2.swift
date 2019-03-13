//
//  ViewController2.swift
//  Quiz App for FBLA 2
//
//  Created by Damon Cestaro on 2/13/19.
//  Copyright © 2019 Cole Cestaro. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    
    //Xcode setup func
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    //Xcode setup func
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    // Go to facebook website when button is pressed
    @IBAction func facebookButtonWasPressed(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://www.facebook.com")! as URL, options: [:], completionHandler: nil)
    }
    // Go to twitter website when button is pressed
    @IBAction func twitterButtonWasPressed(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://twitter.com")! as URL, options: [:], completionHandler: nil)
    }
    // Go to Bug Report Form when button is pressed
    @IBAction func bugreportButtonWasPressed(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://docs.google.com/forms/d/e/1FAIpQLSeEEqWe4HpJK_1YNmId2nrpHGaq4oPH995t_N24ImpF1sPZ4A/viewform?vc=0&c=0&w=1")!, options: [:], completionHandler: nil)
    }
    
}
    

