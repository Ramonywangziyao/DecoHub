//
//  MainTabViewController.swift
//  DecoHub
//
//  Created by Ziyao Wang on 3/15/16.
//  Copyright © 2016 Ziyao Wang. All rights reserved.
//

import UIKit
import SwiftHEXColors

class MainTabViewController: UITabBarController {
    @IBOutlet var requestButton:UIButton?
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
        var requestButtonImage = UIImage(named:"requestButton@2x.png")!
        let requestModel = RequestButtonView(color: "ffa81f", height: self.tabBar.frame.size.height, width: self.tabBar.frame.size.width/3, x: self.tabBar.frame.size.width/3, y: thisScreen.height-self.tabBar.frame.height, title: "Request",img:requestButtonImage)
        requestButton = requestModel.getButton()
        requestButton!.addTarget(self, action: "addRequest:", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(requestButton!)
        self.tabBarController?.tabBar.tintColor = UIColor(hexString:"ffa81f")
        
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
