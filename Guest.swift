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
            /*
             Checks if the 'guesType' is equal to 'freeChildGuest'.
             */
            if self.guestType == .freeChildGuest {
                
                /*
                 1. Checks if the birthday is available.
                 1a. Not Available: Throw Error.
                 1b. Is Available: Continue to check if the guest is below the age of 5.
                 */
                guard let birthday = self.birthday, let childBirthday = dateFormatter.date(from: birthday) else {
                    throw InputError.ageError
                }
                
                let unitFlags:Set<Calendar.Component> = [.day, .month, .year, .calendar]
                var nowDateComponents = Calendar.current.dateComponents(unitFlags, from: Date())
                nowDateComponents.hour = 0
                nowDateComponents.minute = 0
                nowDateComponents.second = 0
                nowDateComponents.nanosecond = 0
                
                nowDateComponents.year = nowDateComponents.year! - 5
                
                let fiveYearsAgo = nowDateComponents.date!
                
                if childBirthday > fiveYearsAgo {
                    print("Valid Access")
                } else {
                    print("Child Guest Too Old")
                    throw InputError.freeChildError
                }
            }
            
            throw InputError.freeChildError
            
        }
    
    }
}
