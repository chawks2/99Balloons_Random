//
//  ViewController.swift
//  99Balloons
//
//  Created by GEST Precision on 2/17/15.
//  Copyright (c) 2015 GEST Precision. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var balloonsLabel: UILabel!
    
// Empty array exists - allows to be used in other func
    
    var myBalloons:[Balloon] = []
    var currentIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
    var myBalloon = Balloon()
        
        
        myBalloon.image = UIImage(named: "RedBalloon1.jpg")
        myBalloon.number = myBalloon.randomCountOfBalloons()
        //self.balloonsLabel.text = "\(myBalloon.number) "
        self.myBalloons.append(myBalloon)
        
    var secondBalloon = Balloon()
        secondBalloon.image = UIImage(named: "RedBalloon2.jpg")
        secondBalloon.number = myBalloon.randomCountOfBalloons()
        self.balloonsLabel.text = "\(myBalloon.number) "
    
    var thirdBalloon = Balloon()
        thirdBalloon.image = UIImage(named: "RedBalloon3.jpg")
        thirdBalloon.number = myBalloon.randomCountOfBalloons()
        //self.balloonsLabel.text = "\(myBalloon.number) "
    
    var fourthBalloon = Balloon()
        fourthBalloon.image = UIImage(named: "RedBalloon4.jpg")
        fourthBalloon.number = myBalloon.randomCountOfBalloons()
        //self.balloonsLabel.text = "\(myBalloon.number)"
    
    //Creates the array
    self.myBalloons += [myBalloon,secondBalloon,thirdBalloon,fourthBalloon]
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func nextBalloonButton(sender: UIBarButtonItem) {
        
        var randomIndex:Int
        
        do {
        randomIndex = Int(arc4random_uniform(UInt32(myBalloons.count)))
        
        } while self.currentIndex == randomIndex
        
        let balloon = self.myBalloons[randomIndex]
        
        self.myImageView.image = balloon.image
        self.balloonsLabel.text = "\(balloon.number) " + balloon.name
        
//        UIView.transitionWithView(self.view, duration: 2, options: UIViewAnimationOptions.TransitionCrossDissolve,
//            animations: {
//                
//                self.myImageView.image = balloon.image
//                self.balloonsLabel.text = "\(balloon.number) " + balloon.name
//        
//            }, completion: {
//                (finished: Bool) -> () in
//        })
    

    }
}
