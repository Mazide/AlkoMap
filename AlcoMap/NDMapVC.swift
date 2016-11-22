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

class NDMapVC: UIViewController, CLLocationManagerDelegate, GMSMapViewDelegate {

    // MARK: UI
    @IBOutlet var mapView:GMSMapView!
    
    // MARK: Flags
    var isCameraPositionChange = false
    
    // MARK: Data
    let locationManager = CLLocationManager()
    let pointsService = NDMapService()
    
    // MARK: Lifecircle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupLocationManager()
        setupMapView()
    }
    
    // MARK: Setup
    func setupMapView(){
        mapView.isMyLocationEnabled = true
        mapView.delegate = self
    }
    
    func setupLocationManager() {
        locationManager.requestWhenInUseAuthorization()
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.startUpdatingLocation()
    }
    
    // MARK: GMSMapViewDelegate
    func mapView(_ mapView: GMSMapView, didTapAt coordinate: CLLocationCoordinate2D) {
        let newPointMarker = NDAlcoPointMarker(position: coordinate)
        newPointMarker.map = mapView
    }
    
    func mapView(_ mapView: GMSMapView, didChange position: GMSCameraPosition) {
        if isCameraPositionChange == false {
            isCameraPositionChange = true
            
            let leftBottomPoint = CGPoint(x:0, y:mapView.frame.size.height)
            let leftBottomLocation = mapView.projection.coordinate(for: leftBottomPoint)
            
            let rightBottomPoint = CGPoint(x:mapView.frame.size.width, y:0)
            let rightBottomLocation = mapView.projection.coordinate(for: rightBottomPoint)
            
            pointsService.getPoints(leftBottomLocation: leftBottomLocation, rightTopLocation: rightBottomLocation, completionBlock: { (points, error) -> (Void) in
                
            })
        }
    }
    
    // MARK: CLLocationManagerDelegate
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]){
        let location = locations.last
        let camera = GMSCameraPosition.camera(withLatitude: (location?.coordinate.latitude)!, longitude: (location?.coordinate.longitude)!, zoom: 12)
        mapView.camera = camera
        manager.stopUpdatingLocation()
    }
}
