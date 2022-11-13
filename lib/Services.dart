import 'package:flutter/material.dart';
import 'Medical.dart';
import 'Food.dart';
import 'Others.dart';
import 'dart:ui';

class Services extends StatelessWidget {
  const Services({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color.fromARGB(255, 217, 194, 245),
      // appBar: PreferredSize(
      // preferredSize: Size.fromHeight(70.0),
      // child: AppBar(
      //   centerTitle: true,
      //   title: const Text(
      //     'Services',
      //     style: TextStyle(color: Colors.white, fontSize: 30),
      //   ),
      //   backgroundColor: Color.fromARGB(255, 99, 176, 235),
      //   elevation: 4.0,
      //   actions: [
      //     IconButton(
      //       icon: Icon(Icons.search),
      //       onPressed: () => {},
      //     ),
      //   ],
      // ),
      //  ),
      body: SingleChildScrollView(
        child: Container(
          child: SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Image.asset("assets/images/Services.jpg")),
                ),
                Container(
                  height: 400,
                  child: Card(
                    semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    elevation: 5,
                    margin: EdgeInsets.all(50),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Theme.of(context).colorScheme.outline,
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(12)),
                    ),
                    // child: const SizedBox(
                    //   width: 300,
                    //   height: 100,
                    //   //child: Center(child: Text('Outlined Card')),
                    // ),
                    child: Center(
                      child: Container(
                        child:
                            Column(mainAxisSize: MainAxisSize.min, children: [
                          SizedBox(
                            height: 70,
                            width: 200,
                            child: ElevatedButton(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(
                                    Icons.medical_information,
                                    color: Colors.red,
                                    size: 40.0,
                                  ),
                                  Text(
                                    'Medical',
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 15, 15, 15),
                                        fontSize: 30),
                                  ),
                                ],
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Medical()),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 20.0, vertical: 10.0),
                                primary: Color.fromARGB(255, 242, 243, 244),
                                onPrimary: Color.fromARGB(255, 252, 248, 248),
                                side: BorderSide(
                                    color: Color.fromARGB(255, 130, 217, 255),
                                    width: 0),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12)),
                              ),
                            ),
                          ),
                          Container(height: 25.0),
                          SizedBox(
                            height: 70,
                            width: 200,
                            child: ElevatedButton(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(
                                    Icons.food_bank_rounded,
                                    color: Colors.red,
                                    size: 50.0,
                                  ),
                                  const Text(
                                    'Food',
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 19, 19, 19),
                                        fontSize: 30),
                                  ),
                                ],
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Food()),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 20.0, vertical: 10.0),
                                primary: Color.fromARGB(255, 252, 245, 245),
                                onPrimary: Color.fromARGB(255, 241, 239, 239),
                                side: BorderSide(
                                    color: Color.fromARGB(255, 54, 160, 246),
                                    width: 0),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12)),
                              ),
                            ),
                          ),
                          Container(height: 25.0),
                          ElevatedButton(
                            child: const Text(
                              'Others',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 14, 14, 14),
                                  fontSize: 30),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Others()),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20.0, vertical: 10.0),
                              primary: Color.fromARGB(255, 247, 248, 249),
                              onPrimary: Color.fromARGB(255, 241, 239, 239),
                              side: BorderSide(
                                  color: Color.fromARGB(255, 72, 162, 236),
                                  width: 0),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12)),
                            ),
                          ),
                        ]),
                      ),
                    ),
                  ),
                  // decoration: new BoxDecoration(
                  //   boxShadow: [
                  //     BoxShadow(
                  //       //<-- SEE HERE
                  //       color: Colors.greenAccent,
                  //       blurRadius: 5.0,
                  //     ),
                  //   ],
                  // ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
