//
//  ViewController.swift
//  Train Tracked
//
//  Created by Bryan Griffin on 1/31/18.
//  Copyright © 2018 Computers and BS. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate, MKMapViewDelegate {

    @IBOutlet weak var mapView: MKMapView!
    
    //pulls railroad crossing pin
    var pin1:RailRoadCrossing!
    
    //initiates location manager
    let locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //railroad crossing at divine street
        let coordinate = CLLocationCoordinate2D(latitude: 33.991978, longitude: -81.038677)
        let region = MKCoordinateRegionMakeWithDistance(coordinate, 1000, 1000)
        mapView.setRegion(region, animated: true)
        
        //creates the first pin and correctly names it
        pin1 = RailRoadCrossing(title: "Devine St Crossing", Subtitle: "train is coming", coordinate: coordinate)
        mapView.addAnnotation(pin1)
        
        
        /*BUG ALERT*/
        //the pin and the user location are both set to the railroad crossing image, fix later
        /*BUG ALERT*/

        
        //i dont know what this does but it is required
        mapView.delegate = self
        
        
        //test to see if master changes, i made a branch and protected the master so that its safe.
    
        
        
        //request user location
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
        
    
    }
    //location manager
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        //sets the mapview to the user's location
        let location = locations[0]
        let center = location.coordinate
        //zooms close enough to view railroad crossings
        let span = MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
        let region = MKCoordinateRegion(center: center, span: span)
        
        mapView.setRegion(region, animated: true)
        mapView.showsUserLocation = true
    }
    //this function sets up the RR pin as the correct image
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        let annotationView = MKAnnotationView(annotation: pin1, reuseIdentifier: "RRPin")
        annotationView.image = UIImage(named: "rail-road-crossing-cross-signal")
        //change pin size to correctly fit the mapview, without the next few lines this image is huge
        let transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
        annotationView.transform = transform
        return annotationView
    }

}

