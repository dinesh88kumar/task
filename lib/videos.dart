import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class Videos extends StatefulWidget {
  @override
  _VideosState createState() => _VideosState();
}

class _VideosState extends State<Videos> {
  VideoPlayerController controller;
  Future<void> initializeVideoplayerfuture;

  String image1 = 'assets/images/e.jpg';
  String image2 = 'assets/images/bbc.jpg';
  String image3 = 'assets/images/a.jpg';
  String image4 = 'assets/images/c.jpg';
  String image5 = 'assets/images/d.jpg';
  String image6 = 'assets/images/f.jpg';
  @override
  void initState() {
    controller = VideoPlayerController.asset('assets/videos/yellow.mp4');
    //controller = VideoPlayerController.network('https://youtu.be/-SXmLLfKCIo');
    initializeVideoplayerfuture = controller.initialize();
    controller.setLooping(true);
    controller.setVolume(1.0);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(children: [
          SizedBox(height: 20),
          Center(
            child: Text(
              'Videos',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(height: 10),
          Stack(
            children: [
              Container(
                padding: EdgeInsets.only(top: 20),
                child: FutureBuilder(
                    future: initializeVideoplayerfuture,
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.done) {
                        return AspectRatio(
                          aspectRatio: controller.value.aspectRatio,
                          child: VideoPlayer(controller),
                        );
                      } else {}
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    }),
              ),
              Container(
                  padding: EdgeInsets.only(top: 90, left: 170),
                  child: IconButton(
                    color: Colors.white,
                    icon: Icon(
                      controller.value.isPlaying
                          ? Icons.pause
                          : Icons.play_arrow,
                      size: 50,
                    ),
                    onPressed: () {
                      setState(() {
                        if (controller.value.isPlaying) {
                          controller.pause();
                        } else {
                          controller.play();
                        }
                      });
                    },
                  ))
            ],
          ),
          SizedBox(height: 12),
          Container(
            padding: EdgeInsets.only(top: 20, left: 15),
            child: Column(
              children: [
                AutoSizeText(
                  'This is Heading of the realted news ws this is another',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  maxLines: 1,
                ),
                SizedBox(height: 5),
                Container(
                  padding: EdgeInsets.only(right: 210),
                  child: Text(
                    '03-04-2021 , 11:13PM',
                    style: TextStyle(
                      fontSize: 13,
                    ),
                    maxLines: 1,
                  ),
                ),
                SizedBox(height: 5),
                Container(
                  padding: EdgeInsets.only(left: 21),
                  child: AutoSizeText(
                    'This is Heading of the realted news ws this is another heading of the......',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                    maxLines: 2,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  child: RaisedButton(
                    onPressed: () {},
                    child: Center(
                      child: Text('Information'),
                    ),
                  ),
                ),
                SizedBox(height: 20),

                VidNews(
                  image: image1,
                ),
                //   SizedBox(height: 15),
                VidNews(
                  image: image2,
                ),
                VidNews(
                  image: image3,
                ),
                VidNews(
                  image: image4,
                ),
                VidNews(
                  image: image6,
                ),
                VidNews(
                  image: image5,
                ),
                VidNews(
                  image: image3,
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

class VidNews extends StatefulWidget {
  String image;
  VidNews({this.image});
  @override
  _VidNewsState createState() => _VidNewsState();
}

class _VidNewsState extends State<VidNews> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20, top: 20),
      child: Row(
        children: [
          Container(
            height: 90,
            width: width / 4.7,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.black,
            ),
            child: Image.asset(
              widget.image,
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(width: 7),
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
                    //   Icon(Icons.bookmark_border)
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
