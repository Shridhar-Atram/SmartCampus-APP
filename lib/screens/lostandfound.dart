import 'package:flutter/material.dart';
import './lost.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import './editItem.dart';

class LostAndFound extends StatelessWidget {
  LostAndFound({Key? key}) : super(key: key) {
    _stream = _reference.snapshots();
  }

  final CollectionReference _reference =
      FirebaseFirestore.instance.collection('item_list');

  late Stream<QuerySnapshot> _stream;
  //String s;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 236, 223, 236),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 73, 9, 108),
        title: Text('Lost & Found'),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Color.fromARGB(255, 241, 237, 241),
            Color.fromARGB(255, 113, 40, 122)
          ]),
        ),
        child: StreamBuilder<QuerySnapshot>(
          stream: _stream,
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.hasError) {
              return Center(
                  child: Text('Some error occurred ${snapshot.error}'));
            }

            if (snapshot.hasData) {
              QuerySnapshot querySnapshot = snapshot.data;
              List<QueryDocumentSnapshot> documents = querySnapshot.docs;

              List<Map> items = documents
                  .map((e) => {
                        'id': e.id,
                        'title': e['title'],
                        'description': e['description'],
                        'contact': e['contact'],
                        'status': e['status'],
                        'foundBy': e['foundBy'],
                      })
                  .toList();

              return Container(
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: items.length,
                    shrinkWrap: true,
                    itemBuilder: (context, i) {
                      Map thisItem = items[i];
                      return FinalItem(thisItem['id']);
                    }),
              );
            }
            /*  return ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: loadedItems.length,
              shrinkWrap: true,
              itemBuilder: (context, i) => FinalItem(
                  loadedItems[i].id,
                  loadedItems[i].title,
                  loadedItems[i].description,
                  loadedItems[i].postedBy,
                  loadedItems[i].imageUrl));*/
            return Center(child: CircularProgressIndicator());
          },
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          // gradient:LinearGradient(colors: [Color.fromARGB(255, 241, 237, 241),Color.fromARGB(255, 113, 40, 122)]),
          color: Color.fromARGB(255, 216, 195, 220),
        ),
        height: 56,
        //margin: EdgeInsets.symmetric(vertical: 1, horizontal: 2),
        margin: EdgeInsets.fromLTRB(1, 0, 1, 1),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  //   gradient:LinearGradient(colors: [Color.fromARGB(255, 170, 47, 2),Color.fromARGB(255, 240, 138, 14)])
                  color: Color.fromARGB(255, 73, 9, 108),
                  border: Border.all(
                    width: 0,
                  ),
                ),
                margin: EdgeInsets.symmetric(horizontal: 2.0),
                alignment: Alignment.center,
                child: TextButton(
                  child: Text('Something Lost?',
                      style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 246, 244, 243))),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Lost()));
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FinalItem extends StatelessWidget {
  FinalItem(this.itemId, {Key? key}) : super(key: key) {
    _reference = FirebaseFirestore.instance.collection('item_list').doc(itemId);
    _futureData = _reference.get();
  }

  String itemId;
  late DocumentReference _reference;
  late Future<DocumentSnapshot> _futureData;
  late Map data;

  //final FirebaseAuth auth = FirebaseAuth.instance;
  Container updateStatus() {
    if ('${data['status']}' == 'Lost') {
      return Container(
        margin: const EdgeInsets.all(10.0),
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.all(
              Radius.circular(5.0) //                 <--- border radius here
              ),
        ),
        child: Text('${data['status']}'),
      );
    } else {
      return Container(
        margin: const EdgeInsets.all(10.0),
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.all(
              Radius.circular(5.0) //                 <--- border radius here
              ),
        ),
        child: Text('${data['status']}'),
      );
    }
  }

  Container? foundItem() {
    if ('${data['status']}' == 'Found') {
      return Container(
          //alignment: Alignment.bottomLeft,
          //   margin: const EdgeInsets.all(12.0),
          padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 2.0),
          decoration: BoxDecoration(
            // color: Colors.blue[400],
            borderRadius: BorderRadius.circular(12),
          ),
          // ignore: prefer_interpolation_to_compose_strings

          child: Row(
            children: [
              Icon(Icons.check, color: Colors.green),
              SizedBox(width: 5.0),
              Text("Found By-",
                  style: TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(153, 23, 1, 1),

                    //decoration: TextDecoration.underline,
                  )),
              SizedBox(width: 8.0),

              // if('${data['status']}'=='Found')
              // {
              new Container(
                child: Text('${data['foundBy']}',
                    style: TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(153, 3, 83, 101),
                      decoration: TextDecoration.underline,
                    )),
              )
            ],
          ));
    } else {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<DocumentSnapshot>(
        future: _futureData,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasError) {
            return Center(child: Text('Some error occurred ${snapshot.error}'));
          }

          if (snapshot.hasData) {
            DocumentSnapshot documentSnapshot = snapshot.data;
            data = documentSnapshot.data() as Map;

            return Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
              child: Card(
                elevation: 5.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0.0),
                ),
                child: Container(
                    decoration: BoxDecoration(
                      // gradient:LinearGradient(colors: [Color.fromARGB(255, 201, 172, 202),Color.fromARGB(255, 113, 40, 122)])
                      color: Color.fromARGB(255, 216, 195, 220),
                    ),
                    width: MediaQuery.of(context).size.width,
                    padding:
                        EdgeInsets.symmetric(horizontal: 5.0, vertical: 10.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                                width: 130.0,
                                height: 130.0,
                                color: Color.fromARGB(255, 143, 136, 136),
                                child: FittedBox(
                                  child: data.containsKey('image')
                                      ? Image.network('${data['image']}')
                                      : Container(),
                                  fit: BoxFit.fill,
                                )),
                            //
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 120.0,
                                  child: Text('${data['title']}',
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 106, 2, 87),
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold,
                                      )),
                                ),
                                SizedBox(height: 5.0),
                                Container(
                                  width: 120.0,
                                  child: Text(
                                      '${data['description']}', //overflow:TextOverflow.visible,
                                      maxLines: 20,
                                      //softWrap: false,
                                      style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 109, 68, 97))),
                                )
                              ],
                            ),
                            //    SizedBox(height:20.0),
                            Container(
                                // alignment: Alignment.bottomRight,
                                padding:
                                    EdgeInsets.fromLTRB(2.0, 0.0, 2.0, 20.0),
                                child: Column(
                                  children: [
                                    IconButton(
                                      onPressed: () {
                                        data['id'] = itemId;
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    EditItem(data)));
                                      },
                                      icon: Icon(
                                        Icons.edit_outlined,
                                      ),
                                    ),
                                    SizedBox(height: 7.0),
                                    Container(
                                      decoration: BoxDecoration(),
                                      child: updateStatus(),
                                    )
                                  ],
                                )),
                          ],
                        ),
                        SizedBox(height: 6.0),
                        Container(
                            //alignment: Alignment.bottomLeft,
                            //   margin: const EdgeInsets.all(12.0),
                            padding: EdgeInsets.symmetric(
                                horizontal: 5.0, vertical: 2.0),
                            decoration: BoxDecoration(
                              // color: Colors.blue[400],
                              borderRadius: BorderRadius.circular(12),
                            ),
                            // ignore: prefer_interpolation_to_compose_strings

                            child: Row(
                              children: [
                                Icon(Icons.report,
                                    color: Color.fromARGB(255, 194, 22, 9)),
                                SizedBox(width: 5.0),
                                Text("Reported By-",
                                    style: TextStyle(
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(153, 23, 1, 1),

                                      //decoration: TextDecoration.underline,
                                    )),
                                SizedBox(width: 8.0),
                                Text('${data['contact']}',
                                    style: TextStyle(
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(153, 3, 83, 101),
                                      decoration: TextDecoration.underline,
                                    )),
                              ],
                            )),
                        SizedBox(
                          height: 4.0,
                        ),
                        Container(child: foundItem()),
                      ],
                    )),
              ),
            );
          }
          return Center(child: CircularProgressIndicator());
        });
  }
}
