import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class Chat extends StatefulWidget {
 // static const String id = "CHAT";
 // final User user;

  const Chat({Key? key}) : super(key: key);
  @override
  _ChatState createState() => _ChatState();
}


class _ChatState extends State<Chat> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
   final User? user = FirebaseAuth.instance.currentUser;
  TextEditingController messageController = TextEditingController();
  ScrollController scrollController = ScrollController();

  Future<void> callback() async {
    if (messageController.text.length > 0) {
      await _firestore.collection('messages').add({
        'text': messageController.text,
        'from': '${user?.email}',
        'date': DateTime.now().toIso8601String().toString(),
      });
      messageController.clear();
      scrollController.animateTo(
        scrollController.position.maxScrollExtent,
        curve: Curves.easeOut,
        duration: const Duration(milliseconds: 300),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Hero(
          tag: 'logo',
          child: Container(
            height: 40.0,
            child: Icon(Icons.chat)
          ),
        ),
        title: Text("GCEK's  Forum"),
       /* actions: <Widget>[
          IconButton(
            icon: Icon(Icons.close),
            onPressed: () {
              _auth.signOut();
              Navigator.of(context).popUntil((route) => route.isFirst);
            },
          )
        ],*/
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
              child: StreamBuilder<QuerySnapshot>(
                stream: _firestore
                    .collection('messages')
                    .orderBy('date')
                    .snapshots(),
                builder: (context, snapshot) {
                  if (!snapshot.hasData)
                    return Center(
                      child: CircularProgressIndicator(),
                    );

              //    List<DocumentSnapshot> docs = snapshot.data?.documents;
                   QuerySnapshot<Object?>? querySnapshot = snapshot.data;
                   List<QueryDocumentSnapshot> documents = querySnapshot!.docs;
                  List<Widget> messages = documents
                      .map((doc) => Message(
                            from: doc['from'],
                            text: doc['text'],
                            me: '${user?.email}' == doc['from'],
                          ))
                      .toList();

                  return ListView(
                    controller: scrollController,
                    children: <Widget>[
                      ...messages,
                    ],
                  );
                },
              ),
            ),
            Container(
              child: Row(
                children: <Widget>[
                  Container(
                    width:270,
                     margin: EdgeInsets.all(10),
                   // height:20,
                    child: TextField(
                     
                      onSubmitted: (value) => callback(),
                      decoration: InputDecoration(
                      
                        hintText: "Enter a Message...",
                        border: const OutlineInputBorder(),
                         hintStyle: TextStyle(
                  color: Color.fromARGB(255, 90, 83, 92),
                  fontStyle: FontStyle.italic,
                  fontSize: 17
                ),
                      ),
                      controller: messageController,
                    ),
                  ),
                  SizedBox(width:1),
                  SendButton(
                    text: "Send",
                    callback: callback,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SendButton extends StatelessWidget {
  final String text;
  final VoidCallback callback;

  const SendButton({Key? key, required this.text, required this.callback}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      //margin:EdgeInsets.only(top:10),
       padding:EdgeInsets.only(top:10),
       height:60,
       width:90,
  child:
    ElevatedButton(
      
      onPressed: callback,
      
      child: Text(text,style: TextStyle(fontSize: 18)),
      style: ButtonStyle(
        
        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
        backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 30, 85, 180)),
  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
    
 
    RoundedRectangleBorder(
        
      borderRadius: BorderRadius.circular(10.0),
      side: BorderSide(color: Color.fromARGB(255, 113, 82, 191))
    )
  )
)
    ));
  }
}

class Message extends StatelessWidget {
  final String from;
  final String text;

  final bool me;

  const Message({Key? key, required this.from, required this.text, required this.me}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment:
            me ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding:EdgeInsets.fromLTRB(4, 5, 4, 1),
            margin:EdgeInsets.fromLTRB(4, 5, 4, 1),
            child: Text(
            'From: '+from,style:TextStyle(fontSize:13)
          ) ,),
         
          Material(
            color: me ? Colors.teal : Colors.red[400],
            borderRadius: BorderRadius.circular(10.0),
            
            elevation: 10.0,
            child: Container(
              margin:EdgeInsets.symmetric(vertical: 5.0, horizontal: 6.0),
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
              decoration: BoxDecoration(
   
    
  ),
              child: Text(
                text,
              ),
            ),
          )
        ],
      ),
       );
  }
}