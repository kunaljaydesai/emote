//
//  WhoIsWrong.swift
//  Emote
//
//  Created by Kunal Desai on 2/7/15.
//  Copyright (c) 2015 Emote. All rights reserved.
//

import UIKit

class WhoIsWrong: UIViewController {
     let whatIsWrong = WhatIsWrong(nibName: "WhatIsWrong", bundle: nil)
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func kidChosenClicked(sender: AnyObject) {
        whatIsWrong.modalTransitionStyle = UIModalTransitionStyle.CrossDissolve
        presentViewController(whatIsWrong, animated: false, completion: nil)
    }
    
  
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
