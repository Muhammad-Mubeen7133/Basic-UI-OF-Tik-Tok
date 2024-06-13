import 'package:flutter/material.dart';
import 'package:ludo/Tik_tok_main/pages.dart';
import 'package:ludo/Tik_tok_main/sizer.dart';
import 'package:ludo/Tik_tok_main/stack_fun.dart';
import 'package:video_player/video_player.dart';

class Home_Page_tik extends StatefulWidget {
  const Home_Page_tik({super.key});

  @override
  State<Home_Page_tik> createState() => _Home_Page_tikState();
}



class _Home_Page_tikState extends State<Home_Page_tik> {
  VideoPlayerController? _controller;
  @override
  void initState() {
    _controller = VideoPlayerController.networkUrl(Uri.parse(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'))
      ..initialize().then((value) {
        setState(() {
          _controller!.play();
        });
      });
    super.initState();
  }

  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height / 100;
    return PageView.builder(
      scrollDirection: Axis.vertical,
      itemBuilder: (c, i) {
        return SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: Center(
                    child: AspectRatio(
                        aspectRatio: _controller!.value.aspectRatio,
                        child: VideoPlayer(_controller!))),
              ),
              stack_fun(context),
              sizer_apna(context),
              class_pages(Colors.cyan,
                  apna_height: MediaQuery.of(context)
                          .size
                          .
                          // 0.6 * by height is ka matlab 60% height
                          height *
                      0.1),
              class_pages(Colors.yellow,
                  apna_height: MediaQuery.of(context).size.height * 0.5,
                  apna_width: MediaQuery.of(context).size.width * 0.6),
              class_pages(Colors.green),
              class_pages(Colors.pink),
              class_pages(Colors.yellow),
              class_pages(Colors.purple),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.1),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.5,
                      width: MediaQuery.of(context).size.width * 0.3,
                      color: Colors.green,
                      child: Text(
                        'WELL COME BAZURGON',
                        style: TextStyle(
                            fontSize: h * 3, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
