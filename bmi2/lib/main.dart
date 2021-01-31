import 'package:bmi2/dbclass.dart';
import 'package:bmi2/history.dart';
import 'package:bmi2/iconsss_icons.dart';
import 'package:bmi2/person.dart';
//import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';

import 'inhereted_all_information.dart';

main(List<String> args) {
  return runApp(Bmi());
}

class Bmi extends StatefulWidget {
  @override
  _BmiState createState() => _BmiState();
}

class _BmiState extends State<Bmi> {
  double height = 120, weight = 60.0;
  int age = 20;
  String gender;
  var resoult;
  // SharedPreferences prefes;
  bool nightmode;
  Color mancolor = Colors.white;
  Color wonamcolor = Colors.white;

  // Dbhelper db;
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    // db = Dbhelper();
  }

  @override
  Widget build(BuildContext context) {
    // void savedata(bool nightmode) async {
    //   prefes = await SharedPreferences.getInstance();
    //   prefes.setBool('Nightmode', nightmode);
    // }

    // void getdata() async {
    //   prefes = await SharedPreferences.getInstance();
    //   nightmode = prefes.getBool('Nightmode') ?? false;
    // }
    final Person person2 = Person(
        id: age + 1, age: age, gender: gender, height: height, weight: weight);
    return InformationProvider(
        child: MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bmi2',
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Bmi calcolation'),
          backgroundColor: Color.fromRGBO(12, 15, 70, 1),
          centerTitle: true,
          actions: [
            IconButton(
              icon: Icon(
                Icons.history_edu_sharp,
                color: Colors.white,
              ),
              onPressed: null,
            ),
            PopupMenuButton(itemBuilder: (context) {
              return null;
            }),
          ],
        ),

        //////////////////////////// all ui ///////////////////////////
        body: Container(
          child: ListView(
            children: [
              /////////////////////  contener 1/////////
              LayoutBuilder(
                builder: (context, constraints) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 3.5,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        /////////////////////contener 1.1//////////
                        /////////////////////
                        LayoutBuilder(builder: (context, constraints) {
                          return Container(
                            padding: EdgeInsets.all(10),
                            alignment: Alignment.center,
                            margin: EdgeInsets.only(top: 10),
                            width: (MediaQuery.of(context).size.width) / 2.3,
                            height: (MediaQuery.of(context).size.height),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color.fromRGBO(12, 15, 70, 0.8),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      gender = "Male";
                                      mancolor = Colors.blue;
                                      wonamcolor = Colors.white;
                                    });
                                  },
                                  icon: Icon(
                                    Iconsss.person,
                                    size: 100,
                                    color: mancolor,
                                  ),
                                ),
                                Text(
                                  ' Male',
                                  style: TextStyle(
                                      color: Colors.white70, fontSize: 20),
                                ),
                              ],
                            ),
                          );
                        }),
                        ///////////////////////contener 1.2//////////
                        ///////////////////////
                        LayoutBuilder(
                          builder: (context, constraints) {
                            return Container(
                              alignment: Alignment.center,
                              margin: EdgeInsets.only(top: 10),
                              width: (MediaQuery.of(context).size.width) / 2.3,
                              height: (MediaQuery.of(context).size.height),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color.fromRGBO(12, 15, 70, 0.8),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(right: 20),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    IconButton(
                                      onPressed: () {
                                        setState(() {
                                          gender = "woman";
                                          mancolor = Colors.white;
                                          wonamcolor = Colors.blue;
                                        });
                                      },
                                      icon: Icon(
                                        Iconsss.user_woman,
                                        size: 100,
                                        color: wonamcolor,
                                      ),
                                    ),
                                    Text(
                                      '       woman',
                                      style: TextStyle(
                                          color: Colors.white70, fontSize: 20),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                        ///////////////////////
                      ],
                    ),
                  );
                },
              ),
              /////////////////////// contener 2////////////
              LayoutBuilder(
                builder: (context, constraints) {
                  return Container(
                    width: (MediaQuery.of(context).size.width),
                    height: (MediaQuery.of(context).size.height) / 3.5,
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromRGBO(30, 30, 90, 1),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Center(
                              child: Text('Height',
                                  style: TextStyle(
                                      fontSize: 30, color: Colors.white))),
                        ),
                        Center(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '$height',
                                style: TextStyle(
                                    fontSize: 50, color: Colors.white),
                              ),
                              Text(
                                'Cm',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        Slider(
                          activeColor: Colors.white,
                          inactiveColor: Colors.white70,
                          value: height,
                          onChanged: (value1) {
                            setState(() {
                              height = value1.floor().toDouble();
                            });
                          },
                          min: 50,
                          max: 300,
                        )
                      ],
                    ),
                  );
                },
              ),
              ///////////////////////counter 3///////////////

              LayoutBuilder(
                builder: (context, constraints) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 3.5,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        /////////////////////container 3.1
                        /////////////////////
                        LayoutBuilder(
                          builder: (context, constraints) {
                            return Container(
                              margin: EdgeInsets.only(top: 10),
                              width: (MediaQuery.of(context).size.width) / 2.3,
                              height: (MediaQuery.of(context).size.height),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color.fromRGBO(12, 15, 70, 0.8),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 11),
                                    child: Text(
                                      ('weight'),
                                      style: TextStyle(
                                          color: Colors.white70, fontSize: 20),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 11),
                                    child: Text(
                                      '$weight',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 50),
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      FloatingActionButton(
                                        onPressed: () {
                                          setState(() {
                                            weight++;
                                          });
                                        },
                                        backgroundColor: Colors.white24,
                                        splashColor: Colors.red[200],
                                        child: Text('+',
                                            style: TextStyle(
                                                fontSize: 35,
                                                color: Colors.white)),
                                      ),
                                      //////////////////////////////////////////////////////
                                      FloatingActionButton(
                                        splashColor: Colors.red[200],
                                        onPressed: () {
                                          setState(() {
                                            weight--;
                                          });
                                        },
                                        child: Text('-',
                                            style: TextStyle(
                                                fontSize: 35,
                                                color: Colors.white)),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            );
                          },
                        ),
                        ///////////////////////
                        ///////////////////////
                        LayoutBuilder(
                          builder: (context, constraints) {
                            return Container(
                              margin: EdgeInsets.only(top: 10),
                              width: (MediaQuery.of(context).size.width) / 2.3,
                              height: (MediaQuery.of(context).size.height),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color.fromRGBO(12, 15, 70, 0.8),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 11),
                                    child: Text(
                                      ('age'),
                                      style: TextStyle(
                                          color: Colors.white70, fontSize: 20),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 11),
                                    child: Text(
                                      '$age',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 50),
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      FloatingActionButton(
                                        onPressed: () {
                                          setState(() {
                                            age++;
                                          });
                                        },
                                        backgroundColor: Colors.white24,
                                        splashColor: Colors.red[200],
                                        child: Text('+',
                                            style: TextStyle(
                                                fontSize: 35,
                                                color: Colors.white)),
                                      ),
                                      //////////////////////////////////////////////////////
                                      FloatingActionButton(
                                        splashColor: Colors.red[200],
                                        onPressed: () {
                                          setState(() {
                                            age--;
                                          });
                                        },
                                        child: Text('-',
                                            style: TextStyle(
                                                fontSize: 35,
                                                color: Colors.white)),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            );
                          },
                        ),
                        ///////////////////////
                      ],
                    ),
                  );
                },
              ),
              /////////////////////// clacolation button/////////
              LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  return Padding(
                    padding: const EdgeInsets.all(10),
                    child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height / 11,
                        child: RaisedButton(
                          color: Colors.green,
                          disabledColor: Colors.blue[500],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Text(
                            'Calcolate',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                          onPressed: () {
                            resoult = calcolation(weight, height);
                            print(person2.age);
                            //   db.createPerson(person2);
                            showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                      title: new Text("welcome in bmi"),
                                      content: new Text("$resoult"),
                                      actions: <Widget>[
                                        FlatButton(
                                          child: Text('Close me!'),
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                        ),
                                        FlatButton(
                                          child: Text('Histoty'),
                                          onPressed: null,
                                        ),
                                      ],
                                    ));
                          },
                        )),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    ));
  }
}

String calcolation(double width, double height) {
  var resoult = width / ((height / 100 * height / 100));
  print(width);
  print(height);
  print(resoult);
  String val;
  if (resoult < 18.5) {
    val = "Thin";
  } else if (18.6 < resoult && resoult < 24.4) {
    val = "Healthy";
  } else if (25 < resoult && resoult < 29.9) {
    val = "over weight";
  } else if (resoult > 30) {
    val = "ovvvvveeer";
  }

  return 'your bim=(${resoult.floor().toDouble()}) that mean you are ($val)';
}
