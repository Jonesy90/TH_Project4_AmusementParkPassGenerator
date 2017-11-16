//
//  TestCases.swift
//  AmusementParkPassGenerator
//
//  Created by Michael Jones on 16/11/2017.
//  Copyright © 2017 Michael Jones. All rights reserved.
//

import Foundation

/*
 Employee Test Cases
 */
var foodServiceEmployeeOne = try? Employee(employeeType: .foodServiceEmployee, firstName: nil, lastName: "Jones", streetAddress: "Something", city: "Something", zipCode: "Something", dateOfBirth: "03-12-1995")
var rideServiceEmployeeOne = try? Employee(employeeType: .rideServiceEmployee, firstName: "Michael", lastName: "Jones", streetAddress: "Something", city: "Something", zipCode: "Something", dateOfBirth: "05-07-1985")
var maintenenceEmployeeOne = try? Employee(employeeType: .maintenanceEmployee, firstName: "Matthew", lastName: "Jones", streetAddress: "Something", city: "Something", zipCode: "Something", dateOfBirth: "01-01-1978")
var managerEmployeeOne = try? Employee(employeeType: .managerEmployee, firstName: "Christopher", lastName: "Jones", streetAddress: "Something", city: "Something", zipCode: "Something", dateOfBirth: "05-03-1987")



/*
 Employee Swipe Methods
 */
//employeeDiscount(foodServiceEmployeeOne)
//employeeDiscount(rideServiceEmployeeOne)
//employeeDiscount(maintenenceEmployeeOne)
//employeeDiscount(managerEmployeeOne)


/*
 Employee Access Swipe Methods
 */

//Food Service Employee
//employeeAccess(employee: foodServiceEmployeeOne, toArea: .amusement)
//employeeAccess(employee: foodServiceEmployeeOne, toArea: .kitchen)
//employeeAccess(employee: foodServiceEmployeeOne, toArea: .maintainance)
//employeeAccess(employee: foodServiceEmployeeOne, toArea: .office)
//employeeAccess(employee: foodServiceEmployeeOne, toArea: .rideControl)
//
////Ride Service Employee
//employeeAccess(employee: rideServiceEmployeeOne, toArea: .amusement)
//employeeAccess(employee: rideServiceEmployeeOne, toArea: .kitchen)
//employeeAccess(employee: rideServiceEmployeeOne, toArea: .maintainance)
//employeeAccess(employee: rideServiceEmployeeOne, toArea: .office)
//employeeAccess(employee: rideServiceEmployeeOne, toArea: .rideControl)
//
////Maintenance Employee
//employeeAccess(employee: maintenenceEmployeeOne, toArea: .amusement)
//employeeAccess(employee: maintenenceEmployeeOne, toArea: .kitchen)
//employeeAccess(employee: maintenenceEmployeeOne, toArea: .maintainance)
//employeeAccess(employee: maintenenceEmployeeOne, toArea: .office)
//employeeAccess(employee: maintenenceEmployeeOne, toArea: .rideControl)
//
////Manager Employee
//employeeAccess(employee: managerEmployeeOne, toArea: .amusement)
//employeeAccess(employee: managerEmployeeOne, toArea: .kitchen)
//employeeAccess(employee: managerEmployeeOne, toArea: .maintainance)
//employeeAccess(employee: managerEmployeeOne, toArea: .office)
//employeeAccess(employee: managerEmployeeOne, toArea: .rideControl)





/*
 Guest Test Cases
 */
var classicGuestOne = Guest(type: .classicGuest, birthday: "01/05/1985")
var vipGuestOne = Guest(type: .vipGuest, birthday: "03-05-1984")
var childGuestOne = Guest(type: .freeChildGuest, birthday: "28-07-2015")

/*
 Guest Swipe Methods
 */

/*
 Guest Discount Swipe Methods
 */
//guestDiscount(classicGuestOne)
//guestDiscount(vipGuestOne)
//guestDiscount(childGuestOne)

//Guest Access Swipe Methods
//Classic Guest Tests
//guestAccess(guest: classicGuestOne, toArea: .amusement)
//guestAccess(guest: classicGuestOne, toArea: .kitchen)
//guestAccess(guest: classicGuestOne, toArea: .maintainance)
//guestAccess(guest: classicGuestOne, toArea: .office)
//guestAccess(guest: classicGuestOne, toArea: .rideControl)
//
////VIP Guest Tests
//guestAccess(guest: vipGuestOne, toArea: .amusement)
//guestAccess(guest: vipGuestOne, toArea: .kitchen)
//guestAccess(guest: vipGuestOne, toArea: .maintainance)
//guestAccess(guest: vipGuestOne, toArea: .office)
//guestAccess(guest: vipGuestOne, toArea: .rideControl)
//
////Free Child Guest Tests
//guestAccess(guest: childGuestOne, toArea: .amusement)
//guestAccess(guest: childGuestOne, toArea: .kitchen)
//guestAccess(guest: childGuestOne, toArea: .maintainance)
//guestAccess(guest: childGuestOne, toArea: .office)
//guestAccess(guest: childGuestOne, toArea: .rideControl)

/*
 Birthday Checker
 */
//birthdayChecker(classicGuestOne)
//birthdayChecker(vipGuestOne)
//birthdayChecker(childGuestOne)





























