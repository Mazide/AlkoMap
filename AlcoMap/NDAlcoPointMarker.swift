//
//  NDAlcoPointMarker.swift
//  AlcoMap
//
//  Created by Nikita Demidov on 22/11/2016.
//  Copyright © 2016 Nikita Demidov. All rights reserved.
//

import UIKit
import GoogleMaps

class NDAlcoPointMarker: GMSMarker {
    init(position: CLLocationCoordinate2D) {
        super.init()
        self.icon = UIImage(imageLiteralResourceName: "bottleMarker")
        self.position = position
    }
}
