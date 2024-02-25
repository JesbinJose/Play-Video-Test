import 'package:flutter/material.dart';
import 'package:play_video/play_video.dart';

class VideoScreen extends StatefulWidget {
  const VideoScreen({super.key, required this.videos});
  final List<String> videos;

  @override
  State<VideoScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<VideoScreen> {
  late PlayVideoController controller;

  @override
  void initState() {
    controller = PlayVideoController(
      isAutoPlay: true,
      videos: Videos.multiVideoWithSingleType(
        videos: widget.videos,
        type: VideoType.file,
      ),
    );
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PlayVideo(
      controller: controller,
      width: MediaQuery.sizeOf(context).width,
      height: MediaQuery.sizeOf(context).height,
    );
  }
}
