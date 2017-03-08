//
//  ConvertToFahrenheit.swift
//  rainyshinnycloudy
//
//  Created by Ernesto Gonzalez on 3/7/17.
//  Copyright © 2017 Ernesto Gonzalez. All rights reserved.
//

import Foundation

extension Double {
    var toFahrenheit: Double {
        return self * 1.8 - 459.67
    }
}

func roundToTenths(_ value: Double) -> Double {
    return round(10 * value) / 10
}
