import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class KvideoPlayer extends StatefulWidget {
  final VideoPlayerController videoPlayerController;
  final bool looping;
  const KvideoPlayer(
      {super.key, required this.videoPlayerController, required this.looping});

  @override
  State<KvideoPlayer> createState() => _KvideoPlayerState();
}

class _KvideoPlayerState extends State<KvideoPlayer> {
  late ChewieController _chewieController;
  @override
  void initState() {
    _chewieController = ChewieController(
        videoPlayerController: widget.videoPlayerController,
        aspectRatio: 16 / 9,
        looping: widget.looping,
        autoInitialize: true,
        errorBuilder: (context, errorMessage) {
          return Center(
            child: Text(errorMessage),
          );
        });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Chewie(controller: _chewieController);
  }

  @override
  void dispose() {
    widget.videoPlayerController.dispose();
    _chewieController.dispose();
    super.dispose();
  }
}
