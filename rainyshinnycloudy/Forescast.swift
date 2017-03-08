//
//  Forescast.swift
//  rainyshinnycloudy
//
//  Created by Ernesto Gonzalez on 3/7/17.
//  Copyright © 2017 Ernesto Gonzalez. All rights reserved.
//

import Foundation
import Alamofire

class Forecast {

    private var _date: String!
    private var _weatherType: String!
    private var _highTemp: String!
    private var _lowTemp: String!
    
    init(){}
    
    init(weatherDict: Dictionary<String, Any>) {
        if let temp = weatherDict["temp"] as? Dictionary<String, Any> {
            if let min = temp["min"] as? Double {
                self._lowTemp = "\(roundToTenths(min))"
            }
            
            if let highTemp = temp["max"] as? Double {
                self._highTemp = "\(roundToTenths(highTemp.toFahrenheit))"
            }
        }
        
        if let weather = weatherDict["weather"] as? [Dictionary<String, Any>] {
            if let main = weather[0]["main"] as? String {
                self._weatherType = main
            }
        }
        
        if let date = weatherDict["dt"] as? Double {
            let unixConvertedDate = Date(timeIntervalSince1970: date)
            self._date = unixConvertedDate.dayOfTheWeek()
        }
    }
    
    var date: String {
        get {
            return _date
        }
    }
    
    var weatherType: String {
        get {
            return _weatherType
        }
    }
    
    var highTemp: String {
        get {
            return _highTemp
        }
    }
    
    var lowTemp: String {
        get {
            return _lowTemp
        }
    }    
}
