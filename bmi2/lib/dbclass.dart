// import 'package:path/path.dart';
// import 'package:sqflite/sqflite.dart';
// import 'dart:async';
// import 'package:sqflite_common/sqlite_api.dart';

// import 'person.dart';

// class Dbhelper {
//   static final Dbhelper _instance = Dbhelper.internal();
//   factory Dbhelper() => _instance;
//   Dbhelper.internal();
//   static Database _db;

//   Future<Database> createdatabase() async {
//     if (_db != null) {
//       return _db;
//     }
//     String path = join(await getDatabasesPath(), 'bmi.db');
//     _db = await openDatabase(path, version: 1, onCreate: (Database db, int i) {
//       db.execute(
//         "CREATE TABLE Person(id INTEGER PRIMARY KEY , age INTEGER,gender nvarchar(50),weight double,height double)",
//       );
//     });
//     return _db;
//   }

//   ////////////////// create person function ////////
//   ///
//   Future<int> createPerson(Person person) async {
//     Database db = await createdatabase();
//     return db.insert('Person', person.tomap());
//   }

//   /////////////////
//   ////////////////select all information about last calcolation/////////
//   Future<List> selectInformation() async {
//     Database db = await createdatabase();
//     return db.query('Person');
//   }

// //////////////////////////
// /////////////////////////

// }
