//
//  RequestViewController.swift
//  DecoHub
//
//  Created by Ziyao Wang on 3/15/16.
//  Copyright © 2016 Ziyao Wang. All rights reserved.
//

import UIKit

class StyleSelectViewController: UIViewController {
    
    
    let cancelButton = UIButton()
    let thisScreen = UIScreen.mainScreen().bounds
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func NextButton(sender: AnyObject) {
        performSegueWithIdentifier("requestDetail", sender: self)
    }


    @IBAction func cancel(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
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
