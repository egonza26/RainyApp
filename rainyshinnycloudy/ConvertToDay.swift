//
//  ConvertToDay.swift
//  rainyshinnycloudy
//
//  Created by Ernesto Gonzalez on 3/7/17.
//  Copyright © 2017 Ernesto Gonzalez. All rights reserved.
//

import Foundation

extension Date {
    func dayOfTheWeek() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .full
        dateFormatter.dateFormat = "EEEE"
        dateFormatter.timeStyle = .none
        return dateFormatter.string(from: self)
    }
}


