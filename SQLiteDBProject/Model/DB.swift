//
//  DB.swift
//  SQLiteDBProject
//
//  Created by Loc Nguyen on 12/8/16.
//  Copyright © 2016 Loc Nguyen. All rights reserved.
//

import Foundation

public class DB {
  
  var type: String = ""
  var name: String = ""
  var sql: String = ""
  var databaseObj: String = ""
  
  // Query template
  let tableDef: String =
                          "CREATE TABLE IF NOT EXISTS main.tablename ( \n"                    +
                          "Id INTEGER KEY AUTOINCREMENT NOT NULL UNIQUE, \n "                 +
                          "colVarchar VARCHAR, \n"                                            +
                          "colInt INTEGER, \n"                                                +
                          "colDouble DOUBLE, \n"                                              +
                          "colBool BOOL, \n"                                                  +
                          "colFloat FLOAT, \n"                                                +
                          "colRead REAL, \n"                                                  +
                          "colChar CHAR, \n"                                                  +
                          "colBlob BLOB, \n"                                                  +
                          "colDateTime DATETIME, \n"                                          +
                          "colNumeric NUMERIC, \n"                                            +
                          "colRealStrict REAL check(typeof('colRealStrict') = 'real'), \n "   +
                          "colIntStrict INTEGER check(typeof('colInStrict') = 'integer'), \n" +
                          "colTextStrict TEXT check(typeof('colTextStrict') = 'text', \n"
}
