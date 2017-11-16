//
//  EmployeeAccessSwipe.swift
//  AmusementParkPassGenerator
//
//  Created by Michael Jones on 16/11/2017.
//  Copyright © 2017 Michael Jones. All rights reserved.
//

import Foundation

//Swipe Method: Checks if the employee is allowed access to certain areas.

func employeeAccess(employee: Employee, toArea: AreaAccess) {
    if employee.employeeType == .foodServiceEmployee && toArea.amusementAreas == true || employee.employeeType == .foodServiceEmployee && toArea.kitchenAreas == true {
        print("Valid Access")
    } else if employee.employeeType == .rideServiceEmployee && toArea.amusementAreas == true || employee.employeeType == .rideServiceEmployee && toArea.rideControlAreas == true {
        print("Valid Access")
    } else if employee.employeeType == .maintenanceEmployee && toArea.amusementAreas == true || employee.employeeType == .maintenanceEmployee && toArea.maintainanceAreas == true || employee.employeeType == .maintenanceEmployee && toArea.kitchenAreas == true || employee.employeeType == .maintenanceEmployee && toArea.rideControlAreas == true {
        print("Valid Access")
    } else if employee.employeeType == .managerEmployee && toArea.amusementAreas == true || employee.employeeType == .managerEmployee && toArea.kitchenAreas == true || employee.employeeType == .managerEmployee && toArea.rideControlAreas == true || employee.employeeType == .managerEmployee && toArea.maintainanceAreas || employee.employeeType == .managerEmployee && toArea.officeAreas == true {
        print("Valid Access")
    } else {
        print("Invalid Access")
    }
}

