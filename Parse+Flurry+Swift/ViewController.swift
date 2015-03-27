//
//  ViewController.swift
//  Parse+Flurry+Swift
//
//  Created by Dmitriy Kirakosyan on 27/03/2015.
//  Copyright (c) 2015 Glowman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //flurry testing
        
        Flurry.startSession("hzhz")

        //parse testing
        
        Parse.setApplicationId("hzhz", clientKey: "hzhzhz")
        
        var gameScore = PFObject(className: "GameScore")
        gameScore.setObject(1337, forKey: "score")
        gameScore.setObject("Sean Plott", forKey: "playerName")
        gameScore.saveInBackgroundWithBlock {
            (success: Bool!, error: NSError!) -> Void in
            if (success != nil) {
                NSLog("Object created with id: \(gameScore.objectId)")
            } else {
                NSLog("%@", error)
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

