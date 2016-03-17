//
//  Extensions.swift
//  DecoHub
//
//  Created by Ziyao Wang on 3/16/16.
//  Copyright © 2016 Ziyao Wang. All rights reserved.
//

import Foundation
import UIKit

extension UIButton{
    
    func initButton(button:UIButton,t:String,h:CGFloat,w:CGFloat,x:CGFloat,y:CGFloat,a:Selector,bc:String)
    {
        button.addTarget(self, action: a, forControlEvents: UIControlEvents.TouchUpInside)
        button.setTitle(t, forState: UIControlState.Normal)
        button.backgroundColor = UIColor(hexString: bc)
        button.frame = CGRectMake(w, h, x, y)
    }
    
    class ChatButton{
        
        
        
        
    }
    
    
}

