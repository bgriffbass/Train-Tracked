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
    var pin1:RailRoadCrossing!   //divine street
    var pin2:RailRoadCrossing!   //main street
    var pin3:RailRoadCrossing!   //assembly street
    var pin4:RailRoadCrossing!   //whaley street
    var pin5:RailRoadCrossing!   //pickens street
    var pin6:RailRoadCrossing!   //huger street
    var pin7:RailRoadCrossing!   //rosewood dr and assembly st
    var pin8:RailRoadCrossing!   //S assembly st and dreyfuss st
    var pin9:RailRoadCrossing!   //catawba st
    var pin10:RailRoadCrossing!  //assembly st near the lofts
    var pin11:RailRoadCrossing!  //gadsden st 1 (north)
    var pin12:RailRoadCrossing!  //gadsden st 2 (middle)
    var pin13:RailRoadCrossing!  //gadsden st 3 (south)
    var pin14:RailRoadCrossing!  //whaley st near lincoln st
    var pin15:RailRoadCrossing!  //lincoln st 1 (north)
    var pin16:RailRoadCrossing!  //lincoln st 2 (south)
    var pin17:RailRoadCrossing!  //wheat st
    var pin18:RailRoadCrossing!  //greene st
    
    
    
    
    //initiates location manager
    let locationManager = CLLocationManager()
    
    
    //main code area
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        //delegates the mapView to the user and allows for the mapView function to work below
        mapView.delegate = self

        
        //request user location
        locationManager.requestWhenInUseAuthorization()
        
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
        let region4 = MKCoordinateRegionMakeWithDistance(coordinate4, 1000, 1000)
        mapView.setRegion(region4, animated: true)
        
        //creates pin4 and names it
        pin4 = RailRoadCrossing(title: "Whaley St Crossing", Subtitle: "trains may come to stop", coordinate: coordinate4)
        mapView.addAnnotation(pin4)
        
        //railroad crossing at pickens street
        let coordinate5 = CLLocationCoordinate2D(latitude: 33.993195, longitude: -81.022663)
        let region5 = MKCoordinateRegionMakeWithDistance(coordinate5, 1000, 1000)
        mapView.setRegion(region5, animated: true)
        
        //creates pin5 and names it
        pin5 = RailRoadCrossing(title: "Pickens St Crossing", Subtitle: "trains may come to stop", coordinate: coordinate5)
        mapView.addAnnotation(pin5)
        
        //railroad crossing at huger street
        let coordinate6 = CLLocationCoordinate2D(latitude: 33.985133, longitude: -81.039221)
        let region6 = MKCoordinateRegionMakeWithDistance(coordinate6, 1000, 1000)
        mapView.setRegion(region6, animated: true)
        
        //creates pin6 and names it
        pin6 = RailRoadCrossing(title: "Huger St Crossing", Subtitle: "trains may come to stop", coordinate: coordinate6)
        mapView.addAnnotation(pin6)
        
        //railroad crossing at rosewood dr and assembly street
        let coordinate7 = CLLocationCoordinate2D(latitude: 33.981408, longitude: -81.022349)
        let region7 = MKCoordinateRegionMakeWithDistance(coordinate7, 1000, 1000)
        mapView.setRegion(region7, animated: true)
        
        //creates pin7 and names it
        pin7 = RailRoadCrossing(title: "Rosewood and Assembly St Crossing", Subtitle: "trains may come to stop", coordinate: coordinate7)
        mapView.addAnnotation(pin7)
        
        //railroad crossing at S assembly st and dreyfuss rd
        let coordinate8 = CLLocationCoordinate2D(latitude: 33.984220, longitude: -81.027861)
        let region8 = MKCoordinateRegionMakeWithDistance(coordinate8, 1000, 1000)
        mapView.setRegion(region8, animated: true)
        
        //creates pin8 and names it
        pin8 = RailRoadCrossing(title: "S Assembly St and Drefuss Rd Crossing", Subtitle: "trains may come to stop", coordinate: coordinate8)
        mapView.addAnnotation(pin8)
        
        //railroad crossing at catawba st
        let coordinate9 = CLLocationCoordinate2D(latitude: 33.988532, longitude: -81.030093)
        let region9 = MKCoordinateRegionMakeWithDistance(coordinate9, 1000, 1000)
        mapView.setRegion(region9, animated: true)
        
        //creates pin9 and names it
        pin9 = RailRoadCrossing(title: "Catawba St Crossing", Subtitle: "trains may come to stop", coordinate: coordinate9)
        mapView.addAnnotation(pin9)
        
        //railroad crossing at assembly st near the lofts
        let coordinate10 = CLLocationCoordinate2D(latitude: 33.988239, longitude: -81.029666)
        let region10 = MKCoordinateRegionMakeWithDistance(coordinate10, 1000, 1000)
        mapView.setRegion(region10, animated: true)
        
        //creates pin10 and names it
        pin10 = RailRoadCrossing(title: "Assembly St near The Lofts Crossing", Subtitle: "trains may come to stop", coordinate: coordinate10)
        mapView.addAnnotation(pin10)
        
        //railroad crossing at Gadsden st 1 (north)
        let coordinate11 = CLLocationCoordinate2D(latitude: 33.988631, longitude: -81.035352)
        let region11 = MKCoordinateRegionMakeWithDistance(coordinate11, 1000, 1000)
        mapView.setRegion(region11, animated: true)
        
        //creates pin11 and names it
        pin11 = RailRoadCrossing(title: "Gadsden St 1 Crossing", Subtitle: "trains may come to stop", coordinate: coordinate11)
        mapView.addAnnotation(pin11)
        
        //railroad crossing at Gadsden st 2 (middle)
        let coordinate12 = CLLocationCoordinate2D(latitude: 33.988436, longitude: -81.035266)
        let region12 = MKCoordinateRegionMakeWithDistance(coordinate12, 1000, 1000)
        mapView.setRegion(region12, animated: true)
        
        //creates pin12 and names it
        pin12 = RailRoadCrossing(title: "Gadsden St 2 Crossing", Subtitle: "trains may come to stop", coordinate: coordinate12)
        mapView.addAnnotation(pin12)
        
        //railroad crossing at Gadsden st 3 (south)
        let coordinate13 = CLLocationCoordinate2D(latitude: 33.987810, longitude: -81.034985)
        let region13 = MKCoordinateRegionMakeWithDistance(coordinate13, 1000, 1000)
        mapView.setRegion(region13, animated: true)
        
        //creates pin13 and names it
        pin13 = RailRoadCrossing(title: "Gadsden St 3 Crossing", Subtitle: "trains may come to stop", coordinate: coordinate13)
        mapView.addAnnotation(pin13)
        
        //railroad crossing at whaley st near lincoln st
        let coordinate14 = CLLocationCoordinate2D(latitude: 33.986344, longitude: -81.032035)
        let region14 = MKCoordinateRegionMakeWithDistance(coordinate14, 1000, 1000)
        mapView.setRegion(region14, animated: true)
        
        //creates pin14 and names it
        pin14 = RailRoadCrossing(title: "Whaley St near Lincoln St Crossing", Subtitle: "trains may come to stop", coordinate: coordinate14)
        mapView.addAnnotation(pin14)
        
        //railroad crossing at lincoln st (north)
        let coordinate15 = CLLocationCoordinate2D(latitude: 33.988969, longitude: -81.033622)
        let region15 = MKCoordinateRegionMakeWithDistance(coordinate14, 1000, 1000)
        mapView.setRegion(region15, animated: true)
        
        //creates pin15 and names it
        pin15 = RailRoadCrossing(title: "N Lincoln St Crossing", Subtitle: "trains may come to stop", coordinate: coordinate15)
        mapView.addAnnotation(pin15)
        
        //railroad crossing at lincoln st (south)
        let coordinate16 = CLLocationCoordinate2D(latitude: 33.986613, longitude: -81.032556)
        let region16 = MKCoordinateRegionMakeWithDistance(coordinate16, 1000, 1000)
        mapView.setRegion(region16, animated: true)
        
        //creates pin16 and names it
        pin16 = RailRoadCrossing(title: "S Lincoln St Crossing", Subtitle: "trains may come to stop", coordinate: coordinate16)
        mapView.addAnnotation(pin16)
        
        //railroad crossing at wheat st
        let coordinate17 = CLLocationCoordinate2D(latitude: 33.994188, longitude: -81.021639)
        let region17 = MKCoordinateRegionMakeWithDistance(coordinate17, 1000, 1000)
        mapView.setRegion(region17, animated: true)
        
        //creates pin17 and names it
        pin17 = RailRoadCrossing(title: "Wheat St Crossing", Subtitle: "trains may come to stop", coordinate: coordinate17)
        mapView.addAnnotation(pin17)
        
        //railroad crossing at greene st
        let coordinate18 = CLLocationCoordinate2D(latitude: 33.999646, longitude: -81.018650)
        let region18 = MKCoordinateRegionMakeWithDistance(coordinate18, 1000, 1000)
        mapView.setRegion(region18, animated: true)
        
        //creates pin18 and names it
        pin18 = RailRoadCrossing(title: "Greene St Crossing", Subtitle: "trains may come to stop", coordinate: coordinate18)
        mapView.addAnnotation(pin18)
        
        
        
        
        
        
        
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
        let span = MKCoordinateSpan(latitudeDelta: 0.015, longitudeDelta: 0.015)
        let region = MKCoordinateRegion(center: center, span: span)
        
        mapView.setRegion(region, animated: true)
        mapView.showsUserLocation = true

    }
    //this function sets up the RR pins as the correct image
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        //makes sure the user location is not changed to the rr crossing icon
        if (annotation is MKUserLocation) {
            return nil
        }
        //changes the rr crossing pins to the desired icon
        let annotationView = MKAnnotationView(annotation: pin1, reuseIdentifier: "RRPin")   //Divine st pin
        _ = MKAnnotationView(annotation: pin2, reuseIdentifier: "RRPin")    //Main st pin
        _ = MKAnnotationView(annotation: pin3, reuseIdentifier: "RRPin")    //Assembly st pin
        _ = MKAnnotationView(annotation: pin4, reuseIdentifier: "RRPin")    //Whaley st pin
        _ = MKAnnotationView(annotation: pin5, reuseIdentifier: "RRPin")    //Pickens st pin
        _ = MKAnnotationView(annotation: pin6, reuseIdentifier: "RRPin")    //Huger st pin
        _ = MKAnnotationView(annotation: pin7, reuseIdentifier: "RRPin")    //rosewood dr and assembly st pin
        _ = MKAnnotationView(annotation: pin8, reuseIdentifier: "RRPin")    //S assembly st and dreyfuss rd pin
        _ = MKAnnotationView(annotation: pin9, reuseIdentifier: "RRPin")    //catawba st pin
        _ = MKAnnotationView(annotation: pin10, reuseIdentifier: "RRPin")   //assembly st near the lofts pin
        _ = MKAnnotationView(annotation: pin11, reuseIdentifier: "RRPin")   //gadsden st 1 pin
        _ = MKAnnotationView(annotation: pin12, reuseIdentifier: "RRPin")   //gadsden st 2 pin
        _ = MKAnnotationView(annotation: pin13, reuseIdentifier: "RRPin")   //gadsden st 3 pin
        _ = MKAnnotationView(annotation: pin14, reuseIdentifier: "RRPin")   //whaley st near lincoln st pin
        _ = MKAnnotationView(annotation: pin15, reuseIdentifier: "RRPin")   //lincoln st 1 (north) pin
        _ = MKAnnotationView(annotation: pin16, reuseIdentifier: "RRPin")   //lincoln st 2 (south) pin
        _ = MKAnnotationView(annotation: pin17, reuseIdentifier: "RRPin")   //wheat st pin
        _ = MKAnnotationView(annotation: pin18, reuseIdentifier: "RRPin")   //greene st pin

        
        
        
        annotationView.image = UIImage(named: "rail-road-crossing-cross-signal")
        //change pin size to correctly fit the mapview, without the next few lines this image is huge
        let transform = CGAffineTransform(scaleX: 0.05, y: 0.05)
        annotationView.transform = transform
        return annotationView
      }
     
    
    
    
    //draws the direction lines
    /*
    func mapView(_ mapView: MKMapView, rendererFor overlay: MKOverlay) -> MKOverlayRenderer {
        let renderer = MKPolylineRenderer(overlay: overlay)
        renderer.strokeColor = UIColor.blue
        renderer.lineWidth = 5.0
        
        return renderer
    }
    */
}

