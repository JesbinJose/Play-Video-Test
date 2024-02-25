import 'package:flutter/material.dart';
import 'package:list_all_videos/model/thumbnail_controller.dart';
import 'package:list_all_videos/model/video_model.dart';
import 'package:list_all_videos/thumbnail/ThumbnailTile.dart';

class VideoTile extends StatelessWidget {
  const VideoTile({
    super.key,
    required this.videoDetails,
    this.isGrid = true,
  });
  final VideoDetails videoDetails;
  final bool isGrid;

  @override
  Widget build(BuildContext context) {
    if (!isGrid) {
      return ListTile(
        leading: ThumbnailTile(
          thumbnailController: ThumbnailController(
            videoPath: videoDetails.videoPath,
          ),
        ),
        title: Text(videoDetails.videoPath),
        trailing: IconButton(
          onPressed: () {
            
          },
          icon: const Icon(Icons.menu),
        ),
      );
    }
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: ThumbnailTile(
              width: 300,
              height: 100,
              thumbnailController: ThumbnailController(
                videoPath: videoDetails.videoPath,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            child: SizedBox(
              height: 20,
              child: Text(
                videoDetails.videoName,
                overflow: TextOverflow.clip,
              ),
            ),
          )
        ],
      ),
    );
  }
}
