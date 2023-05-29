import 'package:flutter/material.dart';

class drop extends StatefulWidget {
  const drop({super.key});

  @override
  State<drop> createState() => _dropState();
}

class _dropState extends State<drop> {
  String? value = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("DropDown")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DropdownButtonHideUnderline(
              child: Stack(
                children: [
                  DropdownButton(
                    items: [
                      DropdownMenuItem(
                        value: "app",
                        child: Center(child: Text("java")),
                      ),
                      DropdownMenuItem(
                        value: "app1",
                        child: Center(child: Text("python")),
                      ),
                      DropdownMenuItem(
                        value: "app2",
                        child: Center(child: Text("react")),
                      ),
                      DropdownMenuItem(
                        value: "app3",
                        child: Center(child: Text("angular")),
                      ),
                    ],
                    onChanged: (value1) {
                      setState(() {
                        value = value1 as String?;
                      });
                    },
                    hint: Text("Select Your Language"),
                    elevation: 0,
                    focusColor: Colors.white,
                  ),
                  Positioned(
                    top:
                        40, // Adjust this value to position the dropdown vertically
                    left: 0,
                    right: 0,
                    child: Container(
                      color: Colors.white,
                      child: Column(
                        children: [
                          ListTile(
                            title: Text('java'),
                            onTap: () {
                              setState(() {
                                value = "app";
                              });
                            },
                          ),
                          ListTile(
                            title: Text('python'),
                            onTap: () {
                              setState(() {
                                value = "app1";
                              });
                            },
                          ),
                          ListTile(
                            title: Text('react'),
                            onTap: () {
                              setState(() {
                                value = "app2";
                              });
                            },
                          ),
                          ListTile(
                            title: Text('angular'),
                            onTap: () {
                              setState(() {
                                value = "app3";
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Text("$value"),
          ],
        ),
      ),
    );
  }
}
