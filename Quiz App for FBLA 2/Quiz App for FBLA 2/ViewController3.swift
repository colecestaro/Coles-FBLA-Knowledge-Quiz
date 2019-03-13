//
//  ViewController3.swift
//  Cole's FBLA Knowledge Quiz
//
//  Created by Damon Cestaro on 3/9/19.
//  Copyright © 2019 Cole Cestaro. All rights reserved.
//

import UIKit

class ViewController3: UIViewController {
    
    //Connect the score label
    @IBOutlet weak var theScoreLabel: UILabel!
    
    //Set temporary value
    var temporary = 0
    
    //Xcode setup func
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("we got here before crashing")
        
        //Set text of score label to temporary (score) out of 10
        theScoreLabel.text = temporary.description + "/10"
        
    }

    //Xcode setup func
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
