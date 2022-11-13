import 'package:flutter/material.dart';
import 'dart:ui';

class food1 extends StatelessWidget {
  const food1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Red Chilli Hotel & Resto',
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
        backgroundColor: Color.fromARGB(255, 255, 160, 6),
        elevation: 4.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 50, 0, 0),
              child: Row(
                children: [
                  Card(
                    color: Color.fromARGB(255, 240, 244, 253),
                    semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    elevation: 5,
                    margin: EdgeInsets.all(10),
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
                    child: InkWell(
                      child: Container(
                        height: 200,
                        width: 130,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 20, 0, 1),
                          child: Column(
                            children: [
                              Container(
                                height: 100,
                                width: 100,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20.0),
                                  child: Image(
                                    image: AssetImage(
                                      'assets/images/red chilli1.jpg',
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 0),
                              Column(
                                children: [
                                  Text(
                                    "Chicken Thali",
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 11, 11, 11),
                                        fontSize: 16),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Text(
                                      "unlimited roti,Rassa,Egg curry,Unlimited Rice",
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 11, 11, 11),
                                          fontSize: 10),
                                    ),
                                  ),
                                  Text(
                                    "Rs.210",
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 11, 11, 11),
                                        fontSize: 16),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 75),
                  Card(
                    color: Color.fromARGB(255, 240, 244, 253),
                    semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    elevation: 5,
                    margin: EdgeInsets.all(10),
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
                    child: InkWell(
                      child: Container(
                        height: 200,
                        width: 130,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 20, 0, 1),
                          child: Column(
                            children: [
                              Container(
                                height: 100,
                                width: 100,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20.0),
                                  child: Image(
                                    image: AssetImage(
                                      'assets/images/red chilli2.jpg',
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 0),
                              Column(
                                children: [
                                  Text(
                                    "Veg Thali",
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 11, 11, 11),
                                        fontSize: 16),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Text(
                                      "Unlimited Roti & Rice,Rassa, Panir Tikka",
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 11, 11, 11),
                                          fontSize: 10),
                                    ),
                                  ),
                                  Text(
                                    "Rs.150",
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 11, 11, 11),
                                        fontSize: 16),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 50, 0, 0),
              child: Row(
                children: [
                  Card(
                    color: Color.fromARGB(255, 240, 244, 253),
                    semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    elevation: 5,
                    margin: EdgeInsets.all(10),
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
                    child: InkWell(
                      child: Container(
                        height: 200,
                        width: 130,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 20, 0, 1),
                          child: Column(
                            children: [
                              Container(
                                height: 100,
                                width: 100,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20.0),
                                  child: Image(
                                    image: AssetImage(
                                      'assets/images/red chilli1.jpg',
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 0),
                              Column(
                                children: [
                                  Text(
                                    "Chicken Thali",
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 11, 11, 11),
                                        fontSize: 16),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Text(
                                      "unlimited roti,Rassa,Egg curry,Unlimited Rice",
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 11, 11, 11),
                                          fontSize: 10),
                                    ),
                                  ),
                                  Text(
                                    "Rs.210",
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 11, 11, 11),
                                        fontSize: 16),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 75),
                  Card(
                    color: Color.fromARGB(255, 240, 244, 253),
                    semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    elevation: 5,
                    margin: EdgeInsets.all(10),
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
                    child: InkWell(
                      child: Container(
                        height: 200,
                        width: 130,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 20, 0, 1),
                          child: Column(
                            children: [
                              Container(
                                height: 100,
                                width: 100,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20.0),
                                  child: Image(
                                    image: AssetImage(
                                      'assets/images/red chilli2.jpg',
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 0),
                              Column(
                                children: [
                                  Text(
                                    "Veg Thali",
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 11, 11, 11),
                                        fontSize: 16),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Text(
                                      "Unlimited Roti & Rice,Rassa, Panir Tikka",
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 11, 11, 11),
                                          fontSize: 10),
                                    ),
                                  ),
                                  Text(
                                    "Rs.150",
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 11, 11, 11),
                                        fontSize: 16),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 50, 0, 0),
              child: Row(
                children: [
                  Card(
                    color: Color.fromARGB(255, 240, 244, 253),
                    semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    elevation: 5,
                    margin: EdgeInsets.all(10),
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
                    child: InkWell(
                      child: Container(
                        height: 200,
                        width: 130,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 20, 0, 1),
                          child: Column(
                            children: [
                              Container(
                                height: 100,
                                width: 100,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20.0),
                                  child: Image(
                                    image: AssetImage(
                                      'assets/images/red chilli1.jpg',
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 0),
                              Column(
                                children: [
                                  Text(
                                    "Chicken Thali",
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 11, 11, 11),
                                        fontSize: 16),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Text(
                                      "unlimited roti,Rassa,Egg curry,Unlimited Rice",
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 11, 11, 11),
                                          fontSize: 10),
                                    ),
                                  ),
                                  Text(
                                    "Rs.210",
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 11, 11, 11),
                                        fontSize: 16),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 75),
                  Card(
                    color: Color.fromARGB(255, 240, 244, 253),
                    semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    elevation: 5,
                    margin: EdgeInsets.all(10),
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
                    child: InkWell(
                      child: Container(
                        height: 200,
                        width: 130,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 20, 0, 1),
                          child: Column(
                            children: [
                              Container(
                                height: 100,
                                width: 100,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20.0),
                                  child: Image(
                                    image: AssetImage(
                                      'assets/images/red chilli2.jpg',
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 0),
                              Column(
                                children: [
                                  Text(
                                    "Veg Thali",
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 11, 11, 11),
                                        fontSize: 16),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Text(
                                      "Unlimited Roti & Rice,Rassa, Panir Tikka",
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 11, 11, 11),
                                          fontSize: 10),
                                    ),
                                  ),
                                  Text(
                                    "Rs.150",
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 11, 11, 11),
                                        fontSize: 16),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
