//
//  Extensions.swift
//  Spotify
//
//  Created by GSM02 on 2021/10/07.
//

import Foundation
import UIKit

extension UIView {
    var width: CGFloat{
        return frame.size.width
    }
    
    var height: CGFloat{
        return frame.size.height
    }
    
    var left: CGFloat{
        return frame.origin.x
    }

    var right: CGFloat{
        return left + width
    }
    
    var top: CGFloat{
        return frame.origin.y
    }
    
    var bottom: CGFloat{
        return height + top
    }
}
