//
//  DateFormatter.swift
//  AmusementParkPassGenerator
//
//  Created by Michael Jones on 16/11/2017.
//  Copyright © 2017 Michael Jones. All rights reserved.
//

import Foundation

var dateFormatter = DateFormatter()
dateFormatter.dateFormat = "dd-MM-yyyy"
dateFormatter.timeZone = TimeZone(secondsFromGMT: 0)
let todaysDate = Date()

