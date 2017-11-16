//
//  AreaAccess.swift
//  AmusementParkPassGenerator
//
//  Created by Michael Jones on 16/11/2017.
//  Copyright © 2017 Michael Jones. All rights reserved.
//

import Foundation

enum Area {
    case amusement
    case kitchen
    case rideControl
    case maintainance
    case office
}

protocol AreaAccess {
    var amusementAreas: Bool { get }
    var kitchenAreas: Bool { get }
    var rideControlAreas: Bool { get }
    var maintainanceAreas: Bool { get }
    var officeAreas: Bool { get }
}




