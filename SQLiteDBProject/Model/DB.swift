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
  let viewDef: String =
                          "CREATE VIEW IF NOT EXIST "                                                               +
                          "viewname AS SELECT * FROM main.tablename "                                               +
                          "or CREATE VIEW viewname AS SELECT columns FROM main.tablename where column equals value " +
                          "or CREATE temp (or temporary) VIEW viewname AS SELECT columns FROM "                     +
                          "main.tablename"
  
  let indexDef: String = "CREATE UNIQUE INDEX IF NOT EXIST main.indexname " +
                         "ON TABLE tablename (Column definition) WHERE where clause"
  
  let triggerDef: String = "CREATE TRIGGER triggername AFTER INSERT ON main.table " +
                           "FOR EACH ROW " +
                           "WHEN (columnname) some condition" +
                           "BEGIN "  +
                           "update Book set Royalties = Sales * .15; " +
                           "END"
  
  init() {
    
  }
  
  func selectDBSchemaStructure(_ objectName: String) -> String {
    
    var def: String = ""
    if (!objectName.isEmpty) {
      def = "Select type, name, tbl_name, " +
            "sql From main.sqlite_master Where name='\(objectName)'"
    } else {
      def = "Select type, name, tbl_name From main.sqlite_master; "
    }
    return def
  }
  
  func selectDBSchemaListByType(_ typeName: String) -> String {
    var def: String = ""
    if (!typeName.isEmpty) {
      def = "Select name From main.sqlite_master Where type='\(typeName)';"
    }
    return def
  }
}
