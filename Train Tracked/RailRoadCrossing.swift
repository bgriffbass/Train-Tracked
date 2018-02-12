//
//  RailRoadCrossing.swift
//  Train Tracked
//
//  Created by Bryan Griffin on 2/1/18.
//  Copyright © 2018 Computers and BS. All rights reserved.
//

import MapKit

class RailRoadCrossing: NSObject, MKAnnotation {
    var title: String?
    var Subtitle: String?
    var coordinate: CLLocationCoordinate2D
    
    init(title: String, Subtitle: String, coordinate: CLLocationCoordinate2D) {
        self.title = title
        self.Subtitle = Subtitle
        self.coordinate = coordinate
    }
}
