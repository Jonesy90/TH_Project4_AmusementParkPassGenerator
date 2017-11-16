//
//  DiscountAccess.swift
//  AmusementParkPassGenerator
//
//  Created by Michael Jones on 16/11/2017.
//  Copyright © 2017 Michael Jones. All rights reserved.
//

import Foundation

protocol DiscountAccess {
    var hasDiscount: Bool { get }
}

enum Discounts {
    case vipGuestFoodDiscount
    case vipGuestMerchandiseDiscount
    case foodServiceFoodDiscount, maintanceServiceFoodDiscount, rideServiceFoodDiscount
    case foodServiceMerchandiseDiscount, maintanceServiceMerchandiseDiscount, managerMerchandiseDiscount, managerFoodDiscount, rideServiceMerchandiseDiscount
    
    var discountAmount: Int {
        switch self {
        case .vipGuestFoodDiscount : return 10
        case .vipGuestMerchandiseDiscount : return 20
        case .foodServiceMerchandiseDiscount, .rideServiceFoodDiscount, .maintanceServiceFoodDiscount : return 15
        default : return 25
        }
    }
    
}

