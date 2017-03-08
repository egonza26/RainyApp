//
//  Constants.swift
//  rainyshinnycloudy
//
//  Created by Ernesto Gonzalez on 3/7/17.
//  Copyright © 2017 Ernesto Gonzalez. All rights reserved.
//

import Foundation

let BASE_URL = "http://api.openweathermap.org/data/2.5/weather?"
let FORECAST_BASE_URL = "http://api.openweathermap.org/data/2.5/forecast/daily?"
let LATITUDE = "lat=\(Location.shareInstace.latitude)"
let LONGITUDE = "&lon=\(Location.shareInstace.longitude)"
let CONTENT = "&cnt=10"
let APP_ID = "&appid="
let API_KEY = "56f0cceb486afeff9199409f15e20f1d"

typealias DownloadComplete = () -> ()

let CURRENT_WEATHER_URL = "\(BASE_URL)\(LATITUDE)\(LONGITUDE)\(APP_ID)\(API_KEY)"
let FORECAST_URL = "\(FORECAST_BASE_URL)\(LATITUDE)\(LONGITUDE)\(CONTENT)\(APP_ID)\(API_KEY)"
