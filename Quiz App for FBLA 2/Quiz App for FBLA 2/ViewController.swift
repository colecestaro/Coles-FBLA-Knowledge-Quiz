//
//  ViewController.swift
//  Quiz App for FBLA 2
//
//  Created by Damon Cestaro on 1/21/19.
//  Copyright © 2019 Cole Cestaro. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    
    //List and set variables
    var temporary = 0;
    var haveBeenHere = false;
    var pagesArray = [false, false, false, false, false, false, false, false, false, false]
    var pageNumber = 0
    var isQuizQuestion = false;
    
    //instances of label
    @IBOutlet weak var topScoreLabelPage0: UILabel!
    @IBOutlet weak var topScoreLabelPage1: UILabel!
    @IBOutlet weak var topScoreLabelPage2: UILabel!
    @IBOutlet weak var topScoreLabelPage3: UILabel!
    @IBOutlet weak var topScoreLabelPage4: UILabel!
    @IBOutlet weak var topScoreLabelPage5: UILabel!
    @IBOutlet weak var topScoreLabelPage6: UILabel!
    @IBOutlet weak var topScoreLabelPage7: UILabel!
    @IBOutlet weak var topScoreLabelPage8: UILabel!
    @IBOutlet weak var topScoreLabelPage9: UILabel!
    
    
    //Xcode setup func
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //If isQuizQuestion=true, unlike in the var setup, run this code to display the score in each view using temporary var
        if (isQuizQuestion) {
            
            //For displaying score
            switch (pageNumber) {
                
            case 0: topScoreLabelPage0.text = "Score: " + temporary.description
                
            case 1: topScoreLabelPage1.text = "Score: " + temporary.description
                
            case 2: topScoreLabelPage2.text = "Score: " + temporary.description
                
            case 3: topScoreLabelPage3.text = "Score: " + temporary.description
                
            case 4: topScoreLabelPage4.text = "Score: " + temporary.description
                
            case 5: topScoreLabelPage5.text = "Score: " + temporary.description
                
            case 6: topScoreLabelPage6.text = "Score: " + temporary.description
                
            case 7: topScoreLabelPage7.text = "Score: " + temporary.description
                
            case 8: topScoreLabelPage8.text = "Score: " + temporary.description
                
            case 9: topScoreLabelPage9.text = "Score: " + temporary.description
                
            default: break;
            }
            
        }
        
    }
    
    //Xcode setup func
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    
    //Func for passing information between segues
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        super.prepare(for: segue, sender: sender)
        
        //Set up a RepeatViewController
        switch(segue.identifier ?? "") {
            
        //Segue from question view to correct view - if, else function to determine if user has already answered the question. If user has answered keep temporary the same, else add 1 to temporary. Question becomes answered. Pass along page number, array, and temporary.
        case "correctSegue":
            
            let destinationView = segue.destination as! ViewController
            
            print("going to correct!")
        
            if pagesArray[pageNumber] == true {
                destinationView.temporary = temporary;
                print("value of temporary: ", temporary)
            } else {
                destinationView.temporary = temporary+1;
                print("value of temporary: ", temporary+1)
            }
            
            pagesArray[pageNumber] = true

            destinationView.pagesArray = pagesArray
        
            destinationView.pageNumber = pageNumber

            print("pageNumber", pageNumber)

        //Segue from question view to false view - pass along page number, array, and temporary.
        case "falseSegue":
            
            let destinationView = segue.destination as! ViewController
            
            print("going to false!")
            
            pagesArray[pageNumber] = true
            
            destinationView.temporary = temporary
            
            destinationView.pagesArray = pagesArray
            
            print("value of temporary: ", temporary)
            
            destinationView.pageNumber = pageNumber
            
            print("pageNumber", pageNumber)
            
        //Segue from question view to next question view in order - pass along page number (which will increase by 1 because next view is the next page), array, and temporary.
        case "nextSegue":
            
            let destinationView = segue.destination as! ViewController
            
            print("going to next")
            
            destinationView.temporary = temporary;
            
            destinationView.pageNumber = pageNumber+1
            
            destinationView.pagesArray = pagesArray
            
            destinationView.isQuizQuestion = true

            print("pageNumber", pageNumber)
            
         //Segue from question view to previous question view in order - pass along page number (which will decrease by 1 because previous view is the previous page), array, and temporary.
        case "backSegue":
            
            let destinationView = segue.destination as! ViewController
            
            print("going to back")
            
            destinationView.temporary = temporary;
            
            destinationView.pageNumber = pageNumber-1
            
            destinationView.pagesArray = pagesArray
            
            destinationView.isQuizQuestion = true

            print("pageNumber", pageNumber)
            
        //Segue from correct or false view to the explanation view - pass along page number, array, and temporary.
        case "explainSegue":
            
            let destinationView = segue.destination as! ViewController
            
            print("go to explain")
            
            destinationView.temporary = temporary;
            
            destinationView.pageNumber = pageNumber
            
            destinationView.pagesArray = pagesArray

            print("pageNumber", pageNumber)
            
        //Segue from the explanation view to the following question view - pass along page number, array, and temporary.
        case "nextquestionSegue":
            
            let destinationView = segue.destination as! ViewController
            
            print("go to next question")
            
            destinationView.temporary = temporary;
            
            destinationView.pageNumber = pageNumber+1
            
            destinationView.pagesArray = pagesArray
            
            destinationView.isQuizQuestion = true
            
            print("pageNumber", pageNumber)
            
        //Segue from any question view to the score view. Pass along temporary for score display in the view. Temporary variable is passed to ViewController to ViewController3
        case "finishSegue":
            
            let destinationView = segue.destination as! ViewController3
            
            print("go to finish")
            
            destinationView.temporary = temporary
        
        default:
            print("something went wrong, no case statement for this segue")
            
        }
        
        
    }
    
}








