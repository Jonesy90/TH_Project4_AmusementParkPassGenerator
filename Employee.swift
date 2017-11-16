//
//  Employee.swift
//  AmusementParkPassGenerator
//
//  Created by Michael Jones on 16/11/2017.
//  Copyright © 2017 Michael Jones. All rights reserved.
//

import Foundation

protocol EmployeeInfo {
    var firstName: String? { get }
    var lastName: String? { get }
    var streetAddress: String { get }
    var city: String { get }
    var zipCode: String { get }
    var dateOfBirth: String { get }
}

enum EmployeeType {
    case foodServiceEmployee
    case rideServiceEmployee
    case maintenanceEmployee
    case managerEmployee
}

class Employee: EmployeeInfo {
    let employeeType: EmployeeType
    var firstName: String?
    var lastName: String?
    var streetAddress: String
    var city: String
    var zipCode: String
    var dateOfBirth: String
    var foodDiscountValue: Int
    var merchandiseDiscountValue: Int
    
    init?(employeeType: EmployeeType, firstName: String?, lastName: String?, streetAddress: String, city: String, zipCode: String, dateOfBirth: String) throws {
        self.employeeType = employeeType
        
        guard let first = firstName else {
            throw InputError.firstNameMissingError
        }
        
        guard let last = lastName else {
            throw InputError.lastNameMissingError
        }
        
        var foodDiscount: Int {
            switch employeeType {
            case .foodServiceEmployee : return Discounts.foodServiceFoodDiscount.discountAmount
            case .maintenanceEmployee : return Discounts.maintanceServiceFoodDiscount.discountAmount
            case .rideServiceEmployee : return Discounts.rideServiceFoodDiscount.discountAmount
            case .managerEmployee : return Discounts.managerFoodDiscount.discountAmount
            }
        }
        
        var merchandiseDiscount: Int {
            switch employeeType {
            case .foodServiceEmployee : return Discounts.foodServiceMerchandiseDiscount.discountAmount
            case .maintenanceEmployee : return Discounts.maintanceServiceMerchandiseDiscount.discountAmount
            case .rideServiceEmployee : return Discounts.rideServiceMerchandiseDiscount.discountAmount
            case .managerEmployee : return Discounts.managerMerchandiseDiscount.discountAmount
            }
        }
        
        self.firstName = firstName
        self.lastName = last
        self.foodDiscountValue = foodDiscount
        self.merchandiseDiscountValue = merchandiseDiscount
        self.streetAddress = streetAddress
        self.city = city
        self.zipCode = zipCode
        self.dateOfBirth = dateOfBirth
        
    }
    
}
