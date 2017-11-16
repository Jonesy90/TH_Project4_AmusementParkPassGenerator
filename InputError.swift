//
//  InputError.swift
//  AmusementParkPassGenerator
//
//  Created by Michael Jones on 16/11/2017.
//  Copyright © 2017 Michael Jones. All rights reserved.
//

import Foundation

enum InputError: Error {
    case firstNameMissingError
    case lastNameMissingError
    case freeChildError
    case ageError
    case birthdayMissingError
}
