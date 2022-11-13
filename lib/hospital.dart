import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class hospital extends StatelessWidget {
  final String title;
  final String shortdesc;
  final String hospitalName;
  final String speciality;
  final String rating;
  final String review;
  final String languages;
  final String address;
  final String charge;
  final String about;
  final String facilities;
  final String imageUrl;
  hospital({
    required this.title,
    required this.shortdesc,
    required this.hospitalName,
    required this.speciality,
    required this.rating,
    required this.review,
    required this.languages,
    required this.address,
    required this.charge,
    required this.about,
    required this.facilities,
    required this.imageUrl,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 199, 236, 248),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          hospitalName,
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
        backgroundColor: Colors.blue[300],
        elevation: 4.0,
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: <Widget>[
                Image(
                  image: AssetImage('assets/images/Doctor.jpg'),
                ),
                Container(
                  margin: EdgeInsets.only(
                      left: 20, right: 20, top: 200, bottom: 100),
                  child: Column(
                    children: [
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: _textTitle('About Doctor', Color(0xFF08134D),
                              15, FontWeight.w700),
                        ),
                      ),
                      Card(
                        semanticContainer: true,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        elevation: 5,
                        margin: EdgeInsets.all(0),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: Theme.of(context).colorScheme.outline,
                          ),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(12)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: _descText(about, Color(0xFF8F8F8F)),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: _textTitle('About Hospital Fascilities',
                              Color(0xFF08134D), 15, FontWeight.w700),
                        ),
                      ),
                      Card(
                        semanticContainer: true,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        elevation: 5,
                        margin: EdgeInsets.all(0),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: Theme.of(context).colorScheme.outline,
                          ),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(12)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: _descText(facilities, Color(0xFF8F8F8F)),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            _doctorCard(),
          ],
        ),
      ),
    );
  }

  Widget _doctorCard() {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20, top: 25),
      child: Card(
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(7),
        ),
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _textTitle(title, Color(0xFF08134D), 29, FontWeight.w700),
                      _coloredBox(Color(0xFFCBFCDD), Color(0xFF30AB6A),
                          'Available : Mon - Sat'),
                      _coloredBox(
                          Color(0xFFE0E4F7), Color(0xFF2748F7), speciality),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5, top: 10),
                    child: Image(
                      image: AssetImage(imageUrl),
                      width: 90,
                      height: 90,
                    ),
                  )
                ],
              ),
              _textTitle(
                  'DM – $speciality', Color(0xFF08134D), 14, FontWeight.w600),
              Row(
                children: [
                  _textTitle('$rating', Color(0xFF08134D), 14, FontWeight.w600),
                  _descText('($review reviews)', Color(0xFF8F8F8F)),
                ],
              ),
              _descText(languages, Color(0xFF8F8F8F)),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.location_on,
                    color: Color(0xFF408AEB),
                    size: 20,
                  ),
                  Flexible(
                    child: _descText(address, Color(0xFF8F8F8F)),
                  ),
                ],
              ),
              Divider(color: Color(0xFF8F8F8F)),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 50),
                child: _textTitle('Charge        Rs ${charge}',
                    Color(0xFF08134D), 18, FontWeight.w700),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _coloredBox(Color backgColor, Color fontColor, String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 7),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7), color: backgColor),
        child: Text(text,
            style: TextStyle(
                color: fontColor, fontSize: 12, fontWeight: FontWeight.w600)),
      ),
    );
  }

  Widget _descText(String text, Color color) {
    return Container(
      padding: EdgeInsets.only(bottom: 5),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(7)),
      child: Text(
        text,
        style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 15,
          color: color,
        ),
      ),
    );
  }

  Widget _textTitle(
      String title, Color color, double fontSize, FontWeight fontWeight) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Text(
        title,
        style:
            TextStyle(fontWeight: fontWeight, fontSize: fontSize, color: color),
      ),
    );
  }

  Widget _appBar(BuildContext context) {
    return AppBar(
      flexibleSpace: Image(
        image: AssetImage(imageUrl),
        fit: BoxFit.fill,
      ),
      elevation: 0,
      leading: GestureDetector(
        onTap: () {
          Navigator.of(context).pop();
        },
        child: Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
        ),
      ),
    );
  }
}
