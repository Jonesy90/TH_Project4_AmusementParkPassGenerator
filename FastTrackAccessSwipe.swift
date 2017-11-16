//
//  FastTrackAccessSwipe.swift
//  AmusementParkPassGenerator
//
//  Created by Michael Jones on 16/11/2017.
//  Copyright © 2017 Michael Jones. All rights reserved.
//

import Foundation

//Swipe Method: Checks if the guest has fast track access.

func fastTrackAccess(_ guest: Guest) -> Bool {
    if guest.guestType == .vipGuest {
        print("Fast Track Access Valid")
        return true
    } else {
        print("Fast Track Access Invalid")
        return false
    }
}
