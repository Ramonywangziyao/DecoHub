//
//  RequestButtonView.swift
//  DecoHub
//
//  Created by Ziyao Wang on 3/16/16.
//  Copyright © 2016 Ziyao Wang. All rights reserved.
//

import Foundation
import UIKit

class RequestButtonView{
    
    let button = UIButton(type: UIButtonType.Custom) as UIButton
    let buttonModel:RequestButton?
    
    init(color:String,height:CGFloat,width:CGFloat,x:CGFloat,y:CGFloat,title:String){
        
        buttonModel = RequestButton(color: color,height: height,width: width,x: x,y: y,title: title)
        
        
    }
    
    func getButton()->UIButton{

        
        button.frame = CGRectMake(buttonModel!.x,buttonModel!.y,buttonModel!.width,buttonModel!.height)
        button.layer.backgroundColor = UIColor(hexString: buttonModel!.color)?.CGColor
        button.setTitle(buttonModel!.title, forState: UIControlState.Normal)
        return button
    }
       
}
    
    
    
