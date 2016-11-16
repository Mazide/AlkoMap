//
//  NDMapVC.swift
//  AlcoMap
//
//  Created by Nikita Demidov on 08.11.16.
//  Copyright © 2016 Nikita Demidov. All rights reserved.
//

import UIKit
import CoreLocation
import GoogleMaps

class NDMapVC: UIViewController, CLLocationManagerDelegate {

    @IBOutlet var mapView:GMSMapView!
    
    let locationManager = CLLocationManager();
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        locationManager.requestWhenInUseAuthorization()
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.startUpdatingLocation()
    }
    
    // MARK: CLLocationManagerDelegate
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]){
        let location = locations.last
        let camera = GMSCameraPosition.camera(withLatitude: (location?.coordinate.latitude)!, longitude: (location?.coordinate.longitude)!, zoom: 12)
        mapView.camera = camera
    }
}
