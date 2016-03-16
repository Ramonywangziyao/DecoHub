//
//  MainTabViewController.swift
//  DecoHub
//
//  Created by Ziyao Wang on 3/15/16.
//  Copyright © 2016 Ziyao Wang. All rights reserved.
//

import UIKit

class MainTabViewController: UITabBarController {
    let requestButton:UIButton = UIButton()
    let thisScreen = UIScreen.mainScreen().bounds
    override func viewDidLoad() {
        super.viewDidLoad()
        makeRequestButton()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func makeRequestButton(){
        requestButton.frame = CGRectMake(0,thisScreen.height-self.tabBar.frame.height,self.tabBar.frame.size.width/5,self.tabBar.frame.size.height)
        requestButton.backgroundColor = UIColor.greenColor()
        requestButton.setTitle("Request", forState: UIControlState.Normal)
        requestButton.center  = self.tabBar.center
        requestButton.addTarget(self, action: "addRequest:", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(requestButton)
        
    }
    
    func addRequest(button:UIButton)
    {
        performSegueWithIdentifier("requestSegue", sender: self)
        
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
