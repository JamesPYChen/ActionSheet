//
//  ViewController.swift
//  AlertHomework
//
//  Created by jamespoyu on 2016/6/13.
//  Copyright © 2016年 Treehouse. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func showMessage(sender: AnyObject) {
        let alert = UIAlertController(title: "請問你想不想談戀愛", message: "Yes or No", preferredStyle: .Alert )
        let yesAction = UIAlertAction(title: "Yes",style: .Default){
            UIAlertAction1 in
            let alert1 = UIAlertController(title: "請問願意和誰談戀愛",message: "pick one", preferredStyle: .ActionSheet)
            let option = UIAlertAction(title: "林志玲", style: .Default, handler: nil)
            let option1 = UIAlertAction(title: "隋棠", style: .Default, handler: nil)
            alert1.addAction(option)
            alert1.addAction(option1)
            
            self.presentViewController(alert1, animated: true , completion: nil)
        }
        let noAction = UIAlertAction(title: "No", style: .Default, handler: nil)
        
        alert.addAction(yesAction)
        alert.addAction(noAction)
        self.presentViewController(alert, animated: true , completion: nil)
    }
    
}

