//
//  RequestButton.swift
//  DecoHub
//
//  Created by Ziyao Wang on 3/16/16.
//  Copyright © 2016 Ziyao Wang. All rights reserved.
//

import UIKit

class RequestButton: NSObject{
    
    var iconImage:UIImage!
    var height:CGFloat!
    var width:CGFloat!
    var x:CGFloat!
    var y:CGFloat!
    var title:String!
    var color:String
    
    init(color:String,height:CGFloat,width:CGFloat,x:CGFloat,y:CGFloat,title:String) {
        self.color = color
        self.height = height
        self.width = width
        self.x = x
        self.y = y
        self.title = title
    }

    
    

}
