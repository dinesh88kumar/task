import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String image1 = 'assets/images/e.jpg';
  String image2 = 'assets/images/bbc.jpg';
  String image3 = 'assets/images/a.jpg';
  String image4 = 'assets/images/c.jpg';
  String image5 = 'assets/images/d.jpg';
  String image6 = 'assets/images/f.jpg';
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SafeArea(
            child: ListView(
      children: [
        SizedBox(height: 20),

        News(
          image: image1,
        ),
        //   SizedBox(height: 15),
        News(
          image: image2,
        ),
        News(
          image: image3,
        ),
        News(
          image: image4,
        ),
        News(
          image: image6,
        ),
        News(
          image: image5,
        ),
        News(
          image: image3,
        )
      ],
    )));
  }
}

class News extends StatefulWidget {
  String image;
  News({this.image});
  @override
  _NewsState createState() => _NewsState();
}

class _NewsState extends State<News> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20, top: 20),
      child: Row(
        children: [
          Container(
            height: 100,
            width: width / 4,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.black,
            ),
            child: Image.asset(
              widget.image,
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(width: 10),
          Container(
            color: Colors.white70,
            width: width / 1.65,
            child: Column(
              children: [
                AutoSizeText(
                  'This is Heading of the realted news ws this is and go on',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                  maxLines: 2,
                ),
                AutoSizeText(
                  'This is Heading of the realted news ws this is another heading of the',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                  maxLines: 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.calendar_today_sharp),
                    Text('03-2-2021'),
                    Container(
                      height: 18,
                      width: 70,
                      color: Colors.orange,
                      child: Center(
                          child: Text(
                        'Sports',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      )),
                    ),
                    Icon(Icons.bookmark_border)
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
