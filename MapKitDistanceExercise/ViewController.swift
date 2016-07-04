//
//  ViewController.swift
//  MapKitDistanceExercise
//
//  Created by 張智涵 on 2016/7/4.
//  Copyright © 2016年 張智涵 Vincent Chang. All rights reserved.
//

import UIKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate {
    
    @IBOutlet weak var distanceLabel: UILabel!
    
    var locationManager: CLLocationManager = CLLocationManager()
    let taipei101Location = CLLocation(latitude: 25.0335, longitude: 121.5641)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
  
            locationManager.desiredAccuracy = kCLLocationAccuracyBest
            locationManager.delegate = self
            locationManager.requestAlwaysAuthorization()
            locationManager.startUpdatingLocation()
        
        
        
    }
    
    
    func locationManager(manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let currentLocation:CLLocation = manager.location!
        let distance = currentLocation.distanceFromLocation(taipei101Location)
        distanceLabel.text = "\(distance)"
        
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

