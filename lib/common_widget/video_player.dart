import 'package:lottie/lottie.dart';
import 'package:tempomylife_web/common_widget/show_exception_alert_dialog.dart';
import 'package:tempomylife_web/main.dart';
import 'package:video_player/video_player.dart';
import 'package:flutter/material.dart';

class VideoApp extends StatefulWidget {
  const VideoApp({key, required this.lienVideo, required this.network})
      : super(key: key);
  final bool network;
  final String lienVideo;

  @override
  _VideoAppState createState() => _VideoAppState();
}

class _VideoAppState extends State<VideoApp> {
  var langageApp = MyApp.langageApp;
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    if (widget.network == false) {
      _controller = VideoPlayerController.asset(
        widget.lienVideo,
      )..initialize().then((_) {
          _controller.setVolume(0.0);
          _controller.setLooping(true);
          _controller.play();
          setState(() {});
        });
    } else {
      try {
        _controller = VideoPlayerController.network(widget.lienVideo)
          ..initialize().then((_) {
            _controller.setVolume(0.0);
            _controller.setLooping(true);
            _controller.play();

            // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
            setState(() {});
          });
      } on Exception catch (e) {
        showExceptionAlertDialog(context,
            title: langageApp.error, exception: e);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: LayoutBuilder(
        builder: (context, constraints) {
          return SizedBox.expand(
            child: FittedBox(
              fit: BoxFit.cover,
              child: SizedBox(
                width: constraints.maxWidth * _controller.value.aspectRatio,
                height: constraints.maxHeight * 0.5,
                child: VideoPlayer(_controller),
              ),
            ),
          );
        },
      ),
      /* _controller.value.isInitialized
          ? 
          LayoutBuilder(
              builder: (context, constraints) {
                return SizedBox.expand(
                  child: FittedBox(
                    fit: BoxFit.cover,
                    child: SizedBox(
                      width:
                          constraints.maxWidth * _controller.value.aspectRatio,
                      height: constraints.maxHeight * 0.5,
                      child: VideoPlayer(_controller),
                    ),
                  ),
                );
              },
            )
          : Container(
              color: Colors.black,
              child: Lottie.asset(
                  'assets/9825-loading-screen-loader-spinning-circle.json'),
            ), */
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
