//
//  SPBBackgroundZommer.swift
//  ImageZoomer
//
//  Created by Alexander Larionov on 14.06.16.
//  Copyright © 2016 Alexander Larionov. All rights reserved.
//

import UIKit

class SPBBackgroundZommer: UIImageView {

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */
    
    func Zoom (offset: Float, currentOffset: Float){
        
        var deltaoffset : Float = 0.0
        
        if (offset <= 0.0){
             if (offset < currentOffset){
                
                deltaoffset = currentOffset * (-1.0) - offset * (-1.0)
                
                self.frame.size.height = self.frame.size.height - CGFloat(deltaoffset)
                self.frame.size.width = self.frame.size.width - CGFloat(deltaoffset)
                self.center.x = self.center.x + CGFloat(deltaoffset/2)

                
                
            }else if (offset > currentOffset){
                
                deltaoffset = offset * (-1.0) - currentOffset * (-1.0)
                
                self.frame.size.height = self.frame.size.height + CGFloat(deltaoffset)
                self.frame.size.width = self.frame.size.width + CGFloat(deltaoffset)
                self.center.x = self.center.x - CGFloat(deltaoffset/2)

                
            }
            else if (offset == 0.0) {
                self.frame.size.height = self.frame.size.height + CGFloat(currentOffset)
                self.frame.size.width = self.frame.size.width + CGFloat(currentOffset)
            }
                        
        }
    }
}
