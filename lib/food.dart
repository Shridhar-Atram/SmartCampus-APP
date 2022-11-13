import 'Services.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter/rendering.dart';
import 'package:flutter/cupertino.dart';
import 'food1.dart';

class Food extends StatelessWidget {
  const Food({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 217, 194, 245),
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Food',
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
        backgroundColor: Colors.blue[300],
        elevation: 4.0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 40, 0, 0),
          child: Column(
            children: [
              Row(
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
                      onTap: () => Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Services())),
                      child: Container(
                        height: 100,
                        width: 100,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 20, 0, 1),
                          child: Column(
                            children: [
                              Icon(Icons.restaurant),
                              SizedBox(height: 10),
                              Text(
                                "Restaurents",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 11, 11, 11),
                                    fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 2),
                  Card(
                    color: Color.fromARGB(255, 233, 245, 254),
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
                      onTap: () => Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Services())),
                      child: Container(
                        height: 100,
                        width: 100,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 20, 0, 1),
                          child: Column(
                            children: [
                              Icon(Icons.food_bank),
                              SizedBox(height: 10),
                              Text(
                                "Food",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 10, 10, 10),
                                    fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Card(
                    color: Color.fromARGB(255, 243, 245, 248),
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
                      onTap: () => Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Services())),
                      child: Container(
                        height: 100,
                        width: 100,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 20, 0, 1),
                          child: Column(
                            children: [
                              Icon(Icons.food_bank_sharp),
                              SizedBox(height: 10),
                              Text(
                                "Drinks",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 15, 15, 15),
                                    fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              //This data is to be uddated on pressing button

              SizedBox(
                height: 15,
              ),
              Container(
                height: 600,
                width: double.infinity,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Text(
                        "Popular Restaurents",
                        style: TextStyle(
                            color: Color.fromARGB(255, 15, 15, 15),
                            fontSize: 25),
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Material(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            elevation: 10,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 5),
                              child: ListTile(
                                tileColor: Color.fromARGB(255, 251, 253, 254),
                                onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => food1(),
                                  ),
                                ),
                                leading: CircleAvatar(
                                  radius: 56,
                                  backgroundColor: Colors.red,
                                  child: ClipOval(
                                    child: SizedBox.fromSize(
                                      size: Size.fromRadius(28), // Image radius
                                      child: Image.asset(
                                          'assets/images/red chilli.jpg',
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                ),
                                title: Text(
                                  'Red Chilli Hotel & Resto.',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 223, 91, 91),
                                      fontSize: 17),
                                ),
                                subtitle: Text(
                                  'College Road, Vidyanagar Karad, Karad - 415124,\n Near Strling Gym',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 76, 18, 153),
                                      fontSize: 10),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          // Material(
                          //   shape: RoundedRectangleBorder(
                          //       borderRadius: BorderRadius.circular(20)),
                          //   elevation: 10,
                          //   child: Padding(
                          //     padding: const EdgeInsets.symmetric(
                          //         horizontal: 10, vertical: 5),
                          //     child: ListTile(
                          //       tileColor: Color.fromARGB(255, 243, 245, 245),
                          //       onTap: () => Navigator.push(
                          //         context,
                          //         MaterialPageRoute(
                          //           builder: (context) => FirstRoute(),
                          //         ),
                          //       ),
                          //       leading: CircleAvatar(
                          //         radius: 56,
                          //         backgroundColor: Colors.red,
                          //         child: ClipOval(
                          //           child: SizedBox.fromSize(
                          //             size: Size.fromRadius(28), // Image radius
                          //             child: Image.asset(
                          //                 'images/red chilli.jpg',
                          //                 fit: BoxFit.cover),
                          //           ),
                          //         ),
                          //       ),
                          //       title: Text(
                          //         'Red Chilli Hotel & Resto.',
                          //         style: TextStyle(
                          //             color: Color.fromARGB(255, 223, 91, 91),
                          //             fontSize: 17),
                          //       ),
                          //       subtitle: Text(
                          //         'College Road, Vidyanagar Karad, Karad - 415124,\n Near Strling Gym',
                          //         style: TextStyle(
                          //             color: Color.fromARGB(255, 76, 18, 153),
                          //             fontSize: 10),
                          //       ),
                          //     ),
                          //   ),
                          // ),
                          // SizedBox(
                          //   height: 20,
                          // ),
                          // Material(
                          //   shape: RoundedRectangleBorder(
                          //       borderRadius: BorderRadius.circular(20)),
                          //   elevation: 10,
                          //   child: Padding(
                          //     padding: const EdgeInsets.symmetric(
                          //         horizontal: 10, vertical: 5),
                          //     child: ListTile(
                          //       tileColor: Color.fromARGB(255, 243, 245, 246),
                          //       onTap: () => Navigator.push(
                          //         context,
                          //         MaterialPageRoute(
                          //           builder: (context) => FirstRoute(),
                          //         ),
                          //       ),
                          //       leading: CircleAvatar(
                          //         radius: 56,
                          //         backgroundColor: Colors.red,
                          //         child: ClipOval(
                          //           child: SizedBox.fromSize(
                          //             size: Size.fromRadius(28), // Image radius
                          //             child: Image.asset(
                          //                 'images/red chilli.jpg',
                          //                 fit: BoxFit.cover),
                          //           ),
                          //         ),
                          //       ),
                          //       title: Text(
                          //         'Red Chilli Hotel & Resto.',
                          //         style: TextStyle(
                          //             color: Color.fromARGB(255, 223, 91, 91),
                          //             fontSize: 17),
                          //       ),
                          //       subtitle: Text(
                          //         'College Road, Vidyanagar Karad, Karad - 415124,\n Near Strling Gym',
                          //         style: TextStyle(
                          //             color: Color.fromARGB(255, 76, 18, 153),
                          //             fontSize: 10),
                          //       ),
                          //     ),
                          //   ),
                          // ),
                          // SizedBox(
                          //   height: 20,
                          // ),
                          // Material(
                          //   shape: RoundedRectangleBorder(
                          //       borderRadius: BorderRadius.circular(20)),
                          //   elevation: 10,
                          //   child: Padding(
                          //     padding: const EdgeInsets.symmetric(
                          //         horizontal: 10, vertical: 5),
                          //     child: ListTile(
                          //       tileColor: Color.fromARGB(255, 243, 244, 245),
                          //       onTap: () => Navigator.push(
                          //         context,
                          //         MaterialPageRoute(
                          //           builder: (context) => FirstRoute(),
                          //         ),
                          //       ),
                          //       leading: CircleAvatar(
                          //         radius: 56,
                          //         backgroundColor: Colors.red,
                          //         child: ClipOval(
                          //           child: SizedBox.fromSize(
                          //             size: Size.fromRadius(28), // Image radius
                          //             child: Image.asset(
                          //                 'images/red chilli.jpg',
                          //                 fit: BoxFit.cover),
                          //           ),
                          //         ),
                          //       ),
                          //       title: Text(
                          //         'Red Chilli Hotel & Resto.',
                          //         style: TextStyle(
                          //             color: Color.fromARGB(255, 223, 91, 91),
                          //             fontSize: 17),
                          //       ),
                          //       subtitle: Text(
                          //         'College Road, Vidyanagar Karad, Karad - 415124,\n Near Strling Gym',
                          //         style: TextStyle(
                          //             color: Color.fromARGB(255, 76, 18, 153),
                          //             fontSize: 10),
                          //       ),
                          //     ),
                          //   ),
                          // ),
                          // SizedBox(
                          //   height: 20,
                          // ),
                          // Material(
                          //   shape: RoundedRectangleBorder(
                          //       borderRadius: BorderRadius.circular(20)),
                          //   elevation: 10,
                          //   child: Padding(
                          //     padding: const EdgeInsets.symmetric(
                          //         horizontal: 10, vertical: 5),
                          //     child: ListTile(
                          //       tileColor: Color.fromARGB(255, 249, 250, 250),
                          //       onTap: () => Navigator.push(
                          //         context,
                          //         MaterialPageRoute(
                          //           builder: (context) => FirstRoute(),
                          //         ),
                          //       ),
                          //       leading: CircleAvatar(
                          //         radius: 56,
                          //         backgroundColor: Colors.red,
                          //         child: ClipOval(
                          //           child: SizedBox.fromSize(
                          //             size: Size.fromRadius(28), // Image radius
                          //             child: Image.asset(
                          //                 'images/red chilli.jpg',
                          //                 fit: BoxFit.cover),
                          //           ),
                          //         ),
                          //       ),
                          //       title: Text(
                          //         'Red Chilli Hotel & Resto.',
                          //         style: TextStyle(
                          //             color: Color.fromARGB(255, 223, 91, 91),
                          //             fontSize: 17),
                          //       ),
                          //       subtitle: Text(
                          //         'College Road, Vidyanagar Karad, Karad - 415124,\n Near Strling Gym',
                          //         style: TextStyle(
                          //             color: Color.fromARGB(255, 76, 18, 153),
                          //             fontSize: 10),
                          //       ),
                          //       // onPressed: () {
                          //       // Navigator.push(
                          //       //   context,
                          //       //   MaterialPageRoute(
                          //       //       builder: (context) => const Medical()),
                          //       // );
                          //       // },
                          //       // style: ElevatedButton.styleFrom(
                          //       //   padding:
                          //       //       EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                          //       //   primary: Color.fromARGB(255, 185, 223, 255),
                          //       //   onPrimary: Color.fromARGB(255, 252, 248, 248),
                          //       //   side: BorderSide(
                          //       //       color: Color.fromARGB(255, 130, 217, 255), width: 0),
                          //       //   shape: RoundedRectangleBorder(
                          //       //       borderRadius: BorderRadius.circular(12)),
                          //       // ),
                          //     ),
                          //   ),
                          // ),
                          // SizedBox(
                          //   height: 20,
                          // ),
                          // Material(
                          //   shape: RoundedRectangleBorder(
                          //       borderRadius: BorderRadius.circular(20)),
                          //   elevation: 10,
                          //   child: Padding(
                          //     padding: const EdgeInsets.symmetric(
                          //         horizontal: 10, vertical: 5),
                          //     child: ListTile(
                          //       tileColor: Color.fromARGB(255, 248, 250, 250),
                          //       onTap: () => Navigator.push(
                          //         context,
                          //         MaterialPageRoute(
                          //           builder: (context) => FirstRoute(),
                          //         ),
                          //       ),
                          //       leading: CircleAvatar(
                          //         radius: 56,
                          //         backgroundColor: Colors.red,
                          //         child: ClipOval(
                          //           child: SizedBox.fromSize(
                          //             size: Size.fromRadius(28), // Image radius
                          //             child: Image.asset(
                          //                 'images/red chilli.jpg',
                          //                 fit: BoxFit.cover),
                          //           ),
                          //         ),
                          //       ),
                          //       title: Text(
                          //         'Red Chilli Hotel & Resto.',
                          //         style: TextStyle(
                          //             color: Color.fromARGB(255, 223, 91, 91),
                          //             fontSize: 17),
                          //       ),
                          //       subtitle: Text(
                          //         'College Road, Vidyanagar Karad, Karad - 415124,\n Near Strling Gym',
                          //         style: TextStyle(
                          //             color: Color.fromARGB(255, 76, 18, 153),
                          //             fontSize: 10),
                          //       ),
                          //       // onPressed: () {
                          //       // Navigator.push(
                          //       //   context,
                          //       //   MaterialPageRoute(
                          //       //       builder: (context) => const Medical()),
                          //       // );
                          //       // },
                          //       // style: ElevatedButton.styleFrom(
                          //       //   padding:
                          //       //       EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                          //       //   primary: Color.fromARGB(255, 185, 223, 255),
                          //       //   onPrimary: Color.fromARGB(255, 252, 248, 248),
                          //       //   side: BorderSide(
                          //       //       color: Color.fromARGB(255, 130, 217, 255), width: 0),
                          //       //   shape: RoundedRectangleBorder(
                          //       //       borderRadius: BorderRadius.circular(12)),
                          //       // ),
                          //     ),
                          //   ),
                          // ),
                          // SizedBox(
                          //   height: 20,
                          // ),
                          // Material(
                          //   shape: RoundedRectangleBorder(
                          //       borderRadius: BorderRadius.circular(20)),
                          //   elevation: 10,
                          //   child: Padding(
                          //     padding: const EdgeInsets.symmetric(
                          //         horizontal: 10, vertical: 5),
                          //     child: ListTile(
                          //       tileColor: Color.fromARGB(255, 250, 251, 252),
                          //       onTap: () => Navigator.push(
                          //         context,
                          //         MaterialPageRoute(
                          //           builder: (context) => FirstRoute(),
                          //         ),
                          //       ),
                          //       leading: CircleAvatar(
                          //         radius: 56,
                          //         backgroundColor: Colors.red,
                          //         child: ClipOval(
                          //           child: SizedBox.fromSize(
                          //             size: Size.fromRadius(28), // Image radius
                          //             child: Image.asset(
                          //                 'images/red chilli.jpg',
                          //                 fit: BoxFit.cover),
                          //           ),
                          //         ),
                          //       ),
                          //       title: Text(
                          //         'Red Chilli Hotel & Resto.',
                          //         style: TextStyle(
                          //             color: Color.fromARGB(255, 223, 91, 91),
                          //             fontSize: 17),
                          //       ),
                          //       subtitle: Text(
                          //         'College Road, Vidyanagar Karad, Karad - 415124,\n Near Strling Gym',
                          //         style: TextStyle(
                          //             color: Color.fromARGB(255, 76, 18, 153),
                          //             fontSize: 10),
                          //       ),
                          //       // onPressed: () {
                          //       // Navigator.push(
                          //       //   context,
                          //       //   MaterialPageRoute(
                          //       //       builder: (context) => const Medical()),
                          //       // );
                          //       // },
                          //       // style: ElevatedButton.styleFrom(
                          //       //   padding:
                          //       //       EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                          //       //   primary: Color.fromARGB(255, 185, 223, 255),
                          //       //   onPrimary: Color.fromARGB(255, 252, 248, 248),
                          //       //   side: BorderSide(
                          //       //       color: Color.fromARGB(255, 130, 217, 255), width: 0),
                          //       //   shape: RoundedRectangleBorder(
                          //       //       borderRadius: BorderRadius.circular(12)),
                          //       // ),
                          //     ),
                          //   ),
                          // ),
                          // SizedBox(
                          //   height: 20,
                          // ),
                          // Material(
                          //   shape: RoundedRectangleBorder(
                          //       borderRadius: BorderRadius.circular(20)),
                          //   elevation: 10,
                          //   child: Padding(
                          //     padding: const EdgeInsets.symmetric(
                          //         horizontal: 10, vertical: 5),
                          //     child: ListTile(
                          //       tileColor: Color.fromARGB(255, 246, 247, 247),
                          //       onTap: () => Navigator.push(
                          //         context,
                          //         MaterialPageRoute(
                          //           builder: (context) => FirstRoute(),
                          //         ),
                          //       ),
                          //       leading: CircleAvatar(
                          //         radius: 56,
                          //         backgroundColor: Colors.red,
                          //         child: ClipOval(
                          //           child: SizedBox.fromSize(
                          //             size: Size.fromRadius(28), // Image radius
                          //             child: Image.asset(
                          //                 'images/red chilli.jpg',
                          //                 fit: BoxFit.cover),
                          //           ),
                          //         ),
                          //       ),
                          //       title: Text(
                          //         'Red Chilli Hotel & Resto.',
                          //         style: TextStyle(
                          //             color: Color.fromARGB(255, 223, 91, 91),
                          //             fontSize: 17),
                          //       ),
                          //       subtitle: Text(
                          //         'College Road, Vidyanagar Karad, Karad - 415124,\n Near Strling Gym',
                          //         style: TextStyle(
                          //             color: Color.fromARGB(255, 76, 18, 153),
                          //             fontSize: 10),
                          //       ),
                          //       // onPressed: () {
                          //       // Navigator.push(
                          //       //   context,
                          //       //   MaterialPageRoute(
                          //       //       builder: (context) => const Medical()),
                          //       // );
                          //       // },
                          //       // style: ElevatedButton.styleFrom(
                          //       //   padding:
                          //       //       EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                          //       //   primary: Color.fromARGB(255, 185, 223, 255),
                          //       //   onPrimary: Color.fromARGB(255, 252, 248, 248),
                          //       //   side: BorderSide(
                          //       //       color: Color.fromARGB(255, 130, 217, 255), width: 0),
                          //       //   shape: RoundedRectangleBorder(
                          //       //       borderRadius: BorderRadius.circular(12)),
                          //       // ),
                          //     ),
                          //   ),
                          // ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
