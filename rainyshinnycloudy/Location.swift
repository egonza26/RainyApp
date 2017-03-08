//
//  Location.swift
//  rainyshinnycloudy
//
//  Created by Ernesto Gonzalez on 3/7/17.
//  Copyright © 2017 Ernesto Gonzalez. All rights reserved.
//

import Foundation
import CoreLocation

class Location {
    
    static var shareInstace = Location()
    private var _latitude: Double!
    private var _longitude: Double!
    
    private init() {}
    
    var latitude: Double {
        get {
            if _latitude == nil {
                _latitude = 0.0
            }
            return _latitude
        }
        set {
            _latitude = newValue
        }
    }
    
    var longitude: Double {
        get {
            if _longitude == nil {
                _longitude = 0.0
            }
            return _longitude
        }
        set {
            _longitude = newValue
        }
        
    }
}
