import 'dart:io';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';


class Lost extends StatefulWidget {
  Lost({Key? key}) : super(key: key);

  @override
  State<Lost> createState() => _LostState();
}

class _LostState extends State<Lost> {
  TextEditingController _controllerTitle = TextEditingController();
  TextEditingController _controllerdescription = TextEditingController();

  GlobalKey<FormState> key = GlobalKey();
  CollectionReference _reference =
      FirebaseFirestore.instance.collection('item_list');

  String imageURL = '';
  final User? user = FirebaseAuth.instance.currentUser;
  final String st='Lost';
  final String found='';
  void clearText() {
   _controllerTitle.clear();
    _controllerdescription.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Lost an item?'),
        ),
        body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 2.0, vertical: 4.0),
            child: Center(
                child: SingleChildScrollView(
              child: Form(
                  key: key,
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 50.0),
                        width: 150.0,
                        height: 150.0,
                        child: Image.network(
                            'https://www.pngitem.com/pimgs/m/245-2454007_lost-and-found-icon-hd-png-download.png'),
                      ),

                      // SizedBox(height: 5.0),
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 7.0, vertical: 20.0),
                        child: TextFormField(
                          controller: _controllerTitle,
                          style: TextStyle(
                              fontSize: 17.0, fontWeight: FontWeight.bold),
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.only(
                                left: 14.0, bottom: 8.0, top: 10.0),
                            hintText: 'Enter Name of an item',
                            border: InputBorder.none,
                            filled: true,
                            fillColor: Colors.grey[300],
                            focusColor: Colors.grey,
                            focusedBorder: OutlineInputBorder(
                                borderSide: new BorderSide(color: Colors.grey),
                                borderRadius: BorderRadius.circular(25.7)),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: new BorderSide(color: Colors.white),
                              borderRadius: new BorderRadius.circular(25.7),
                            ),
                          ),
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter the name';
                            }
                            return null;
                          },
                        ),
                      ),
                      SizedBox(height: 5.0),
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 7.0, vertical: 10.0),
                        child: TextFormField(
                          maxLines: 5,
                          controller: _controllerdescription,
                          style: TextStyle(
                              fontSize: 17.0, fontWeight: FontWeight.bold),
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.only(
                                left: 14.0, bottom: 8.0, top: 10.0),
                            hintText: 'Enter Description ',
                            border: InputBorder.none,
                            filled: true,
                            fillColor: Colors.grey[300],
                            focusColor: Colors.grey,
                            enabledBorder: OutlineInputBorder(
                                borderSide: new BorderSide(color: Colors.grey),
                                borderRadius: BorderRadius.circular(25.7)),
                            focusedBorder: OutlineInputBorder(
                              borderSide: new BorderSide(color: Colors.white),
                              borderRadius: new BorderRadius.circular(25.7),
                            ),
                          ),
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter the description';
                            }
                            return null;
                          },
                        ),
                      ),
                      SizedBox(height: 5.0),
                      // Container(,)
                      IconButton(
                          onPressed: () async {
                            ImagePicker imagePicker = ImagePicker();
                            XFile? file = await imagePicker.pickImage(
                                source: ImageSource.gallery);

                            if (file == null) return;
                            String uniqueFileName = DateTime.now()
                                .millisecondsSinceEpoch
                                .toString();
                            Reference referenceRoot =
                                FirebaseStorage.instance.ref();
                            Reference referenceDirImages =
                                referenceRoot.child('images');

                            Reference referenceImageToUpload =
                                referenceDirImages.child(uniqueFileName);
                            try {
                              await referenceImageToUpload
                                  .putFile(File(file.path));
                              imageURL =
                                  await referenceImageToUpload.getDownloadURL();
                            // ignore: empty_catches
                            } catch (error) {}
                          },
                          icon: const Icon(Icons.camera_alt)),
                      const SizedBox(height: 5.0),
                      Container(
                          padding:
                              const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(30)),
                          child: InkWell(
                            child: const Padding(
                              padding: EdgeInsets.all(12.0),
                              child: Text('Submit',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white)),
                            ),
                            onTap: () async {
                              if (imageURL.isEmpty) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                        content:
                                            Text('Please upload an image')));
                                return;
                              }
                              if (key.currentState!.validate()) {
                               
                                String itemTitle = _controllerTitle.text;
                                String itemDescription =
                                    _controllerdescription.text;

                                Map<String, String> dataToSend = {
                                  'title': itemTitle,
                                  'description': itemDescription,
                                  'contact': '${user?.email}',
                                  'status':st,
                                  'foundBy':found,
                                  'image': imageURL,
                                 
                                };
                                _reference.add(dataToSend);
                                 clearText();
                              }
                            },
                          ))
                    ],
                  )),
            ))));
  }
}
