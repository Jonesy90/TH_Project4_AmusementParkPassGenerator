//
//  Guest.swift
//  AmusementParkPassGenerator
//
//  Created by Michael Jones on 16/11/2017.
//  Copyright © 2017 Michael Jones. All rights reserved.
//

import Foundation

enum GuestType {
    case classicGuest
    case vipGuest
    case freeChildGuest
}


class Guest: AreaAccess, QueueAccess, DiscountAccess {
    let guestType: GuestType
    var birthday: String? = nil
    var amusementAreas: Bool = true
    var kitchenAreas: Bool = false
    var rideControlAreas: Bool = false
    var maintainanceAreas: Bool = false
    var officeAreas: Bool = false
    var skippableAccess: Bool
    var hasDiscount: Bool
    
    init(type: GuestType, birthday: String?) {
        self.guestType = type
        var access: Bool {
            if type == .vipGuest {
                return true
            } else {
                return false
            }
        }
        
        var discount: Bool {
            if type == .vipGuest {
                return true
            } else {
                return false
            }
        }
        
        self.birthday = birthday
        self.skippableAccess = access
        self.hasDiscount = discount
        
    }
    
    /*
     Checks if the guestType is equal to 'freeChildGuest', then checks if the child is under the age of 5.
     */
    
    func childAgeChecker() throws {
        if self.guestType == .freeChildGuest {
            guard let birthday = self.birthday, let childBirthdayYear = dateFormatter.date(from: birthday) else {
                throw InputError.ageError
            }
            
            var birthdayYear = Calendar.current.dateComponents([.year], from: childBirthdayYear).year!
            
            var currentYear = Calendar.current.dateComponents([.year], from: todaysDate).year!
            
            var childsAge: Int {
                return currentYear - birthdayYear
            }
            
            /*
             TODO: Check day & month as well (e.g. 5 years old, 2 months and 1 day - this would be over 5 years old).
             */
            
            if childsAge <= 5 {
                print("Young Enough")
            } else {
                print("Too Old")
                throw InputError.freeChildError
            }
            
        }
    }
    
    
    
}
