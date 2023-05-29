import 'package:dropdown/sceondDropdown.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: home(),
    );
  }
}

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  bool disabledropdown=true;
  String? value = "";
  List<DropdownMenuItem<String>>menuitem=[];
  final car={
     "1":"mehran",
     "2":"alto",
     "3":"cultus",
     "4":"khyber",
  };
  final bike={
     "1":"super",
     "2":"star",
     "3":"honda",
     "4":"hero",
  };
   final airline={
     "1":"pia",
     "2":"emirates",
     "3":"british",
     "4":"united",
  };
   final bus={
     "1":"Daewoo ",
     "2":"Waraich ",
     "3":"Kohistan ",
     "4":"Skyways",
  };
  void populatecar(){
    for(String key in car.keys){
      menuitem.add(DropdownMenuItem(child: Center(value=car[key],
        child: Text(car[key]),)))
    }
  }
   void populatebike(){
    for(String key in bike.keys){
      menuitem.add(DropdownMenuItem(child: Center(value=bike[key],
        child: Text(bike[key]),)))
    }
  }
   void populatebus(){
    for(String key in bus.keys){
      menuitem.add(DropdownMenuItem(child: Center(value=bus[key],
        child: Text(bus[key]),)))
    }
  }
   void populateairline(){
    for(String key in airline.keys){
      menuitem.add(DropdownMenuItem(child: Center(value=airline[key],
        child: Text(airline[key]),)))
    }
  }
  void selected(value1){
    if(value1=="car"){
      menuitem=[];
      populatecar();
    } else if
    (value1=="bike"){menuitem=[];
      populatebike();
    }else if (value1=="bus"){menuitem=[];
      populatebus();
    }else if
    (value1=="airline"){menuitem=[];
      populateairline();
    }
    setState(() {
      
      value=value1;
      disabledropdown=false;
    });
  void secondselected(value1){
    setState(() {
      
      value=value1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DropdownButton(
              items: [
                DropdownMenuItem(
                    value: "car",
                    child: Center(
                      child: Text("car"),
                    )),
                DropdownMenuItem(
                    value: "bike",
                    child: Center(
                      child: Text("bike"),
                    )),
                DropdownMenuItem(
                    value: "airline",
                    child: Center(
                      child: Text("airline"),
                    )),
                DropdownMenuItem(
                    value: "bus",
                    child: Center(
                      child: Text("bus"),
                    ))
              ],
              onChanged:(value1)=>selected(value1),
              
              hint: Text("Select Your vehicle"),
              elevation: 0,
              focusColor: Colors.white,
              //iconEnabledColor: Colors.amber,
            ),
            SizedBox(
              height: 40,
            ),
            DropdownButton(
              items:menuitem ,
              onChanged: disabledropdown?null:(value1)=>secondselected(value1),
              
              hint: Text("Select Your type"),
              elevation: 0,
              focusColor: Colors.white,
              //iconEnabledColor: Colors.amber,
            ),
            Text("$value"),
            MaterialButton(
              onPressed: () {
                setState(() {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => drop()));
                });
              },
              child: Container(
                margin: EdgeInsets.only(top: 34),
                child: Text(
                  "drop@",
                  style: TextStyle(fontSize: 29),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
}