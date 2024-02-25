import 'package:flutter/material.dart';
import 'package:video_player/presentation/widgets/video_tile.dart';
import 'package:video_player/vars.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, required this.isGrid});
  final ValueNotifier<bool> isGrid;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(20),
          width: double.infinity,
          height: MediaQuery.sizeOf(context).height,
          child: LayoutBuilder(
            builder: (context, _) {
              final s = MediaQuery.sizeOf(context);
              return ValueListenableBuilder(
                  valueListenable: isGrid,
                  builder: (_, v, __) {
                    if (!v) {
                      return ListView.separated(
                        itemBuilder: (context, index) => VideoTile(
                          videoDetails: Data.videos[index],
                          isGrid: false,
                        ),
                        separatorBuilder: (_, __) => const Divider(),
                        itemCount: Data.videos.length,
                      );
                    }
                    return GridView.count(
                      crossAxisCount: s.width < s.height ? 2 : 4,
                      childAspectRatio: 1.2,
                      crossAxisSpacing: 30,
                      mainAxisSpacing: 20,
                      children: [
                        ...List.generate(
                          Data.videos.length,
                          (index) => VideoTile(
                            videoDetails: Data.videos[index],
                          ),
                        ),
                      ],
                    );
                  });
            },
          ),
        ),
        Container(),
      ],
    );
  }
}
