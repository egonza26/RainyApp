//
//  ForecastCell.swift
//  rainyshinnycloudy
//
//  Created by Ernesto Gonzalez on 3/7/17.
//  Copyright © 2017 Ernesto Gonzalez. All rights reserved.
//

import UIKit

class ForecastCell: UITableViewCell {

    @IBOutlet weak var weatherImage: UIImageView!
    @IBOutlet weak var dayLbl: UILabel!
    @IBOutlet weak var currentTypeWeatherLbl: UILabel!
    @IBOutlet weak var maxTempLbl: UILabel!
    @IBOutlet weak var minTempLbl: UILabel!
    
    func setUpCell(_ forecast: Forecast) {
        dayLbl.text = forecast.date
        currentTypeWeatherLbl.text = forecast.weatherType
        maxTempLbl.text = forecast.highTemp
        minTempLbl.text = forecast.lowTemp
        weatherImage.image = UIImage(named: forecast.weatherType)
    }
}
