//
//  ViewController.swift
//  Emote
//
//  Created by Kunal Desai on 2/7/15.
//  Copyright (c) 2015 Emote. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textfield: UITextField!
    @IBOutlet weak var parent: UIButton!
    @IBOutlet weak var student: UIButton!
    @IBOutlet weak var teacher: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  
    @IBAction func send(sender: AnyObject) {
        sendRequest()
    }
   
    
    func sendRequest(){
    let request = NSMutableURLRequest(URL: NSURL(string: "http://localhost")!)
    request.HTTPMethod = "POST"
    let postString = "studentName=kunal&reporter=parent&emotion=happy&timestamp=10"
    request.HTTPBody = postString.dataUsingEncoding(NSUTF8StringEncoding)
    let task = NSURLSession.sharedSession().dataTaskWithRequest(request) {
        data, response, error in
        
        if error != nil {
            println("error=\(error)")
            return
        }
        
        println("response = \(response)")
        
        let responseString = NSString(data: data, encoding: NSUTF8StringEncoding)
        println("responseString = \(responseString)")
    }
    task.resume()
    }
}

