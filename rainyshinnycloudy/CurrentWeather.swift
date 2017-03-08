//
//  CurrentWeather.swift
//  rainyshinnycloudy
//
//  Created by Ernesto Gonzalez on 3/7/17.
//  Copyright © 2017 Ernesto Gonzalez. All rights reserved.
//

import Alamofire

class CurrentWeather {
    
    private var _cityName: String!
    private var _date: String!
    private var _weatherType: String!
    private var _currentTemp: Double!
    
    var cityName: String {
        get {
            return _cityName
        }
    }
    
    var date: String {
        get {
            let dateFormatter = DateFormatter()
            dateFormatter.dateStyle = .long
            dateFormatter.timeStyle = .none
            let currentDate = dateFormatter.string(from: Date())
            self._date = "Today, \(currentDate)"
            return _date
        }
    }
    
    var weatherType: String {
        get {
            return _weatherType
        }
    }
    
    var currentTemp: Double {
        get {
            return _currentTemp
        }
    }
    
    func downloadWeatherDetails(completed: @escaping DownloadComplete) {
        //Alamofire download
        Alamofire.request(CURRENT_WEATHER_URL).responseJSON {response in
            let result = response.result
            
            if let dict = result.value as? Dictionary<String, Any> {
                if let name = dict["name"] as? String {
                    self._cityName = name.capitalized
                    print(self._cityName)
                }
                
                if let weather = dict["weather"] as? [Dictionary<String, Any>] {
                    if let main = weather[0]["main"] as? String {
                        self._weatherType = main.capitalized
                    }
                }
                
                if let main = dict["main"] as? Dictionary<String, Any> {
                    if let temp = main["temp"] as? Double {
                        self._currentTemp = roundToTenths(temp.toFahrenheit)
                        print(self.currentTemp)
                    }
                }
            }
            print(result)
            completed()
        }
    }
}
