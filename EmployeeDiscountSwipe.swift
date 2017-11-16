//
//  EmployeeDiscountSwipe.swift
//  AmusementParkPassGenerator
//
//  Created by Michael Jones on 16/11/2017.
//  Copyright © 2017 Michael Jones. All rights reserved.
//

import Foundation

//Swipe Mehtod: Checks if the employee has any discount. If they do, print out the percentage of the discount.

func employeeDiscount(_ employee: Employee) -> Bool {
    switch employee.employeeType {
    case .foodServiceEmployee: print("Food Discount: \(Discounts.foodServiceFoodDiscount.discountAmount)%/nMerchandise Discount: \(Discounts.foodServiceMerchandiseDiscount.discountAmount)%"); return true
    case .maintenanceEmployee: print("Food Discount: \(Discounts.maintanceServiceFoodDiscount.discountAmount)%\nMerchandise Discount: \(Discounts.maintanceServiceMerchandiseDiscount.discountAmount)%"); return true
    case .managerEmployee: print("Food Discount: \(Discounts.managerFoodDiscount.discountAmount)%\nMerchandise Discount: \(Discounts.managerMerchandiseDiscount.discountAmount)%"); return true
    case .rideServiceEmployee: print("Food Discount: \(Discounts.rideServiceFoodDiscount.discountAmount)%\nMerchandise Discount: \(Discounts.rideServiceMerchandiseDiscount.discountAmount)%"); return true
    }
}

