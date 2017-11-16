//
//  GuestDiscountSwipe.swift
//  AmusementParkPassGenerator
//
//  Created by Michael Jones on 16/11/2017.
//  Copyright © 2017 Michael Jones. All rights reserved.
//

import Foundation

//Swipe Method: Checks if the guest has any discounts. If so, print out the percentage of the discount.

func guestDiscount(_ guest: Guest) -> Bool {
    switch guest.guestType {
    case .vipGuest : print ("Food Discount: \(Discounts.vipGuestFoodDiscount.discountAmount)%\nMerchandise Discount: \(Discounts.vipGuestMerchandiseDiscount.discountAmount)%"); return true
    default : print ("Invalid Discount"); return false
    }
}

