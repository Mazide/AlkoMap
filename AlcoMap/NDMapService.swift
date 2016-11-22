//
//  NDMapService.swift
//  AlcoMap
//
//  Created by Nikita Demidov on 22/11/2016.
//  Copyright © 2016 Nikita Demidov. All rights reserved.
//

import UIKit
import CoreLocation

typealias CompletionBlock = (NSArray?, NSError?) -> (Void)

class NDMapService: NSObject {
    func getPoints(leftBottomLocation: CLLocationCoordinate2D,
                   rightTopLocation:CLLocationCoordinate2D,
                   completionBlock: CompletionBlock?) {
        
        if completionBlock != nil {
            return
        }
        
        
    }
    
    func getNearPoints(location:CLLocationCoordinate2D) {
        
    }
}
