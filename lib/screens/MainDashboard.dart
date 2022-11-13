import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:carousel_slider/carousel_slider.dart';

class MySlider extends StatefulWidget {
  @override
  _MySliderState createState() => _MySliderState();
 // Info Create() => Info();
}

class _MySliderState extends State<MySlider> {
  @override
  Widget build(BuildContext context) {
     final size = MediaQuery.of(context).size;

    return Scaffold(
        
        body: LayoutBuilder(
          builder: (context, constraints) => Column(
            children: [
              Container(
              //  decoration: BoxDecoration(color: Color.fromARGB(66, 116, 137, 189)),
                height: constraints.maxHeight / 2,
                width: constraints.maxWidth,
                child: ListView(
                  children: [
                    CarouselSlider(
                      items: [
                        Container(
                          margin: EdgeInsets.all(6.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://firebasestorage.googleapis.com/v0/b/smart-campus-app.appspot.com/o/carousel%2Fcollege.jpg?alt=media&token=d5d41845-227b-4729-9c68-6e9b18bc691b"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(6.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://firebasestorage.googleapis.com/v0/b/smart-campus-app.appspot.com/o/carousel%2F3202.jpg?alt=media&token=5209fc91-5337-45d8-a8a2-0a8bfb27b71c"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(6.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://firebasestorage.googleapis.com/v0/b/smart-campus-app.appspot.com/o/carousel%2Fphoto_6156426897299452696_y.jpg?alt=media&token=e6660495-4012-4189-9aa0-58eb995ebf84"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(6.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://firebasestorage.googleapis.com/v0/b/smart-campus-app.appspot.com/o/carousel%2Fphoto_6156426897299452697_y.jpg?alt=media&token=d4bbf2f1-2988-418a-b812-ad6a922d9d21"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(6.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://firebasestorage.googleapis.com/v0/b/smart-campus-app.appspot.com/o/carousel%2Fphoto_6156426897299452698_y.jpg?alt=media&token=f096f62b-50b4-4cbd-8f33-c59c68edddd8"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                      options: CarouselOptions(
                        height: 480.0,
                        enlargeCenterPage: true,
                        autoPlay: true,
                        aspectRatio: 16 / 9,
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enableInfiniteScroll: true,
                        autoPlayAnimationDuration: Duration(milliseconds: 800),
                        viewportFraction: 0.8,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  
                  height: size.height + 339,
                  width: size.width,
                  margin:EdgeInsets.all(15.0),
                  padding: EdgeInsets.fromLTRB(3, 20, 3, 10),
                  //color: Colors.blue,
                  // child: //Center(
                  child: 
                   Text.rich(
            TextSpan(
             
              children: [
                TextSpan(
                  text: "Government College of Engineering, Karad   ",
                  style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color:Color.fromARGB(255, 12, 63, 121)),
                ),
                TextSpan(
                  text:  "is one among seven engineering colleges established by the State Government of Maharashtra and first among those established post-independence. The prime objective of establishing the college was to impart technical education to the youth in rural parts of Maharashtra.The college was established in 1960 with undergraduate programmes in three core branches of Civil, Mechanical and Electrical Engineering, initially affiliated to Savitribai Phule Pune University and subsequently to Shivaji University in 1972 ",
                  style: TextStyle(fontSize: 14,color:Color.fromARGB(255, 28, 36, 102)),
                ),
                
              ],
             
            )
          ),
                ),
              ),
            ],
          ),
        ));
  }
}

/*class Info extends StatelessWidget {
  const Info({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text:
            'Government College of Engineering, Karad is an autonomous technical institute in the Indian state of Maharashtra. It was established in 1960 and is affiliated to the Shivaji University with an autonomous status under the UGC. The autonomy was granted by the UGC ',
        style: DefaultTextStyle.of(context).style,
        children: const <TextSpan>[
          TextSpan(text: 'bold', style: TextStyle(fontWeight: FontWeight.bold)),
          TextSpan(text: ' world!'),
        ],
      ),
    );
  }
}*/
