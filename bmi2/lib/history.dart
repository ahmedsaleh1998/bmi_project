// import 'package:bmi2/dbclass.dart';
// import 'package:bmi2/person.dart';
// import 'package:flutter/material.dart';

// class Histor extends StatefulWidget {
//   @override
//   _HistoryState createState() => _HistoryState();
// }

// class _HistoryState extends State<Histor> {
//  // Dbhelper db;
//   @override
//   void initState() {
//     // ignore: todo
//     // TODO: implement initState
//     super.initState();
//    // db = Dbhelper();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: FutureBuilder(
//           future: db.selectInformation(),
//           builder: (context, snapshot) {
//             if (!snapshot.hasData) {
//               return CircularProgressIndicator();
//             } else {
//               return ListView.builder(
//                 itemCount: snapshot.data.length(),
//                 itemBuilder: (context, index) {
//                   Person person = Person.frommap(snapshot.data[index]);
//                   return ListTile(
//                     title: Text(person.gender),
//                     subtitle: Text('${person.age}'),
//                     onTap: null,
//                   );
//                 },
//               );
//             }
//           },
//         ),
//       ),
//     );
//   }
// }
