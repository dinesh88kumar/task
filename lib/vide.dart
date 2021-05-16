import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class Vid extends StatefulWidget {
  @override
  _VidState createState() => _VidState();
}

class _VidState extends State<Vid> {
  VideoPlayerController controller;
  Future<void> initializeVideoplayerfuture;
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
      body: FutureBuilder(
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
      floatingActionButton: FloatingActionButton(
        child: Icon(
          controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
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
      ),
    );
  }
}
