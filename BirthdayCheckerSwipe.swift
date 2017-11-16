//
//  BirthdayCheckerSwipe.swift
//  AmusementParkPassGenerator
//
//  Created by Michael Jones on 16/11/2017.
//  Copyright © 2017 Michael Jones. All rights reserved.
//

import Foundation

//Swipe Method: Checks if the guest birthday is valid.

func birthdayChecker(_ guest: Guest) throws {
    
    guard let birthday = guest.birthday, let guestBirthday = dateFormatter.date(from: birthday) else {
        throw InputError.birthdayMissingError
    }
    
    if Calendar.current.compare(guestBirthday, to: todaysDate, toGranularity: .day) == .orderedSame && Calendar.current.compare(guestBirthday, to: todaysDate, toGranularity: .month) == .orderedSame {
        print("HAPPY BIRTHDAY")
    } else {
        print("It's not your birthday")
    }
    
    
}





