//
//  Enums.swift
//  SQLiteDBProject
//
//  Created by Loc Nguyen on 12/9/16.
//  Copyright © 2016 Loc Nguyen. All rights reserved.
//

import Foundation

public class Enums {
  enum SQLiteStatusCode: Int32 {
    case ok = 0
    case error = 1
    case internalLogicError = 2
    case accessPermissionDenied = 3
    case abort = 4
    case busy = 5
    case noMemory = 6
    case readOnly = 7
    case interrupt = 8
    case iOError = 9
    case corrupt = 10
    case notFount = 11
    case full = 12
    case cantOpen = 13
    case protcol = 14
    case empty = 15
    case schema = 16
    case tooBig = 17
    case constraint = 18
    case mismatch = 19
    case misuse = 20
    case noLFS = 21
    case authDeniedUTH = 22
    case format = 23
    case range = 24
    case notADatabase = 25
    case row = 100
    case done = 101
  }
}
