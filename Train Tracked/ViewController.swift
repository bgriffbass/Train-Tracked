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
    
    //pulls railroad crossing pin and assigns each crossing a pin
    var pin1:RailRoadCrossing!  //divine street
    var pin2:RailRoadCrossing!  //main street
    var pin3:RailRoadCrossing!  //assembly street
    var pin4:RailRoadCrossing!  //whaley street
    var pin5:RailRoadCrossing!  //pickens street
    
    
    
    
   
    
    
    
    
    
    //initiates location manager
    let locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //request user location
        //locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        
        //locationManager.startUpdatingLocation()
        
        
        
        
        if CLLocationManager.locationServicesEnabled() {
            locationManager.delegate = self
            locationManager.desiredAccuracy = kCLLocationAccuracyBest
            locationManager.startUpdatingLocation()

        }
        
        
        
        
        
        /*
        
        //Direction manager
        mapView.showsScale = true
        mapView.showsPointsOfInterest = true
        
        
        //set beginning and destination locations so that we can give directions between them
        let sourceCoordinates = locationManager.location?.coordinate
        //test destination for now
        let destCoordinates = CLLocationCoordinate2DMake(33.991978, -81.039111)
        let sourcePlacemark = MKPlacemark(coordinate: sourceCoordinates!)
        let destPlacemark = MKPlacemark(coordinate: destCoordinates)
        
        let sourceItem = MKMapItem(placemark: sourcePlacemark)
        let destItem = MKMapItem(placemark: destPlacemark)
        
        let directionRequest = MKDirectionsRequest()
        directionRequest.source = sourceItem
        directionRequest.destination = destItem
        directionRequest.transportType = .automobile
        //directionRequest.transportType = .walking
        
        let directions = MKDirections(request: directionRequest)
        directions.calculate(completionHandler: {
            response, error in
        
            guard let response = response else {
                if error != nil {
                    print("Something went wrong")
                }
                return
            }
            
            let route = response.routes[0]
            self.mapView.add(route.polyline, level: .aboveRoads)
            
            let rekt = route.polyline.boundingMapRect
            self.mapView.setRegion(MKCoordinateRegionForMapRect(rekt), animated: true)
        })
        
        */
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        //railroad crossing at divine street
        let coordinate1 = CLLocationCoordinate2D(latitude: 33.991978, longitude: -81.038677)
        let region1 = MKCoordinateRegionMakeWithDistance(coordinate1, 1000, 1000)
        mapView.setRegion(region1, animated: true)
        
        //creates pin1 and names it
        pin1 = RailRoadCrossing(title: "Devine St Crossing", Subtitle: "Two train tracks cross here", coordinate: coordinate1)
        mapView.addAnnotation(pin1)
        
        //railroad crossing at main street
        let coordinate2 = CLLocationCoordinate2D(latitude: 33.990507, longitude: -81.028763)
        let region2 = MKCoordinateRegionMakeWithDistance(coordinate2, 1000, 1000)
        mapView.setRegion(region2, animated: true)
        
        //creates pin2 and names it
        pin2 = RailRoadCrossing(title: "Main St Crossing", Subtitle: "trains may come to stop", coordinate: coordinate2)
        mapView.addAnnotation(pin2)
        
        //railroad crossing at assembly street
        let coordinate3 = CLLocationCoordinate2D(latitude: 33.989983, longitude: -81.030436)
        let region3 = MKCoordinateRegionMakeWithDistance(coordinate3, 1000, 1000)
        mapView.setRegion(region3, animated: true)
        
        //creates pin3 and names it
        pin3 = RailRoadCrossing(title: "Assembly St Crossing", Subtitle: "trains may come to stop", coordinate: coordinate3)
        mapView.addAnnotation(pin3)
        
        //railroad crossing at whaley street
        let coordinate4 = CLLocationCoordinate2D(latitude: 33.988311, longitude: -81.025988)
        let region4 = MKCoordinateRegionMakeWithDistance(coordinate3, 1000, 1000)
        mapView.setRegion(region4, animated: true)
        
        //creates pin4 and names it
        pin4 = RailRoadCrossing(title: "Whaley St Crossing", Subtitle: "trains may come to stop", coordinate: coordinate4)
        mapView.addAnnotation(pin4)
        
        //railroad crossing at pickens street
        let coordinate5 = CLLocationCoordinate2D(latitude: 33.993195, longitude: -81.022663)
        let region5 = MKCoordinateRegionMakeWithDistance(coordinate3, 1000, 1000)
        mapView.setRegion(region5, animated: true)
        
        //creates pin5 and names it
        pin5 = RailRoadCrossing(title: "Pickens St Crossing", Subtitle: "trains may come to stop", coordinate: coordinate5)
        mapView.addAnnotation(pin5)
        
        
        
        
        
        
        
        
        
        /*BUG ALERT*/
        //the pin and the user location are both set to the railroad crossing image, fix later
        /*BUG ALERT*/

        mapView.delegate = self
        
        
    
    }
    //location manager
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        //sets the mapview to the user's location
        let location = locations[0]
        let center = location.coordinate
        //zooms close enough to view railroad crossings
        let span = MKCoordinateSpan(latitudeDelta: 0.015, longitudeDelta: 0.015)
        let region = MKCoordinateRegion(center: center, span: span)
        
        mapView.setRegion(region, animated: false)
        mapView.showsUserLocation = true
    }
    //this function sets up the RR pins as the correct image
/*    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        let annotationView = MKAnnotationView(annotation: pin1, reuseIdentifier: "RRPin")   //divine st pin
        _ = MKAnnotationView(annotation: pin2, reuseIdentifier: "RRPin")    //main st pin
        _ = MKAnnotationView(annotation: pin3, reuseIdentifier: "RRPin")    //assembly st pin
        _ = MKAnnotationView(annotation: pin4, reuseIdentifier: "RRPin")    //Whaley st pin
        _ = MKAnnotationView(annotation: pin5, reuseIdentifier: "RRPin")    //Pickens st pin

        
        
        
        
        
        annotationView.image = UIImage(named: "rail-road-crossing-cross-signal")
        //change pin size to correctly fit the mapview, without the next few lines this image is huge
        let transform = CGAffineTransform(scaleX: 0.05, y: 0.05)
        annotationView.transform = transform
        return annotationView
      }
     
     */
    
    
    
    
    func mapView(_ mapView: MKMapView, rendererFor overlay: MKOverlay) -> MKOverlayRenderer {
        let renderer = MKPolylineRenderer(overlay: overlay)
        renderer.strokeColor = UIColor.blue
        renderer.lineWidth = 5.0
        
        return renderer
    }

}

