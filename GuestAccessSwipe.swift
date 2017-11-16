//
//  GuestAccessSwipe.swift
//  AmusementParkPassGenerator
//
//  Created by Michael Jones on 16/11/2017.
//  Copyright © 2017 Michael Jones. All rights reserved.
//

import Foundation

//Swipe Method: Checks if the guest in allowed access to certain areas.

func guessAccess(guest: Guest, toArea: Area) {
    if guest.guestType == .classicGuest && toArea == Area.amusement {
        print("Valid Access")
    } else if guest.guestType == .vipGuest && toArea == Area.amusement {
        print("Valid Access")
    } else if guest.guestType == .freeChildGuest && toArea == Area.amusement {
        print("Valid Access")
    } else {
        print("Invalid Access")
    }
}



