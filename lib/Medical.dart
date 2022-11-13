import 'package:flutter/material.dart';
import 'dart:ui';
import 'doctor_details_data.dart';
import 'hospital.dart';

class Medical extends StatelessWidget {
  const Medical({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 217, 194, 245),
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Medical',
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
        backgroundColor: Color.fromARGB(255, 99, 176, 235),
        elevation: 4.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Image.asset("assets/images/Doctor.jpg")),
            ),
            Text(
              'Hospitals List',
              style: TextStyle(
                  color: Color.fromARGB(255, 13, 13, 13), fontSize: 27),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: DoctorDetailsData.map((element) {
                  return Padding(
                    padding: EdgeInsets.all(10.0),
                    child: ElevatedButton(
                      child: Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: Row(
                          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(
                              element.imageUrl,
                              height: 100,
                              width: 100,
                            ),
                            Column(
                              children: [
                                Text(
                                  element.hospitalName,
                                  overflow: TextOverflow.fade,
                                  maxLines: 1,
                                  softWrap: false,
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 223, 91, 91),
                                      fontSize: 17),
                                ),
                                Text(
                                  element.shortdesc,
                                  //softWrap: false,
                                  maxLines: 1,
                                  //overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 76, 18, 153),
                                      fontSize: 10),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      onPressed: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return hospital(
                            title: element.title,
                            shortdesc: element.shortdesc,
                            hospitalName: element.hospitalName,
                            speciality: element.speciality,
                            rating: element.rating,
                            review: element.review,
                            languages: element.languages,
                            address: element.address,
                            charge: element.charge,
                            about: element.about,
                            facilities: element.facilities,
                            imageUrl: element.imageUrl,
                          );
                        }));
                      },
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 10.0),
                        primary: Color.fromARGB(255, 245, 246, 248),
                        onPrimary: Color.fromARGB(255, 252, 248, 248),
                        side: BorderSide(
                            color: Color.fromARGB(255, 130, 217, 255),
                            width: 0),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
