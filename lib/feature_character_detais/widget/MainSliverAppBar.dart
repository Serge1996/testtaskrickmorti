import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class MainSliverAppBar extends SliverPersistentHeaderDelegate {
  final double expandedHeight;
  final String imgUrl;

  MainSliverAppBar({required this.imgUrl, required this.expandedHeight});

  ValueNotifier<bool> isCollapse = ValueNotifier(false);

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) => Stack(
        clipBehavior: Clip.none,
        fit: StackFit.expand,
        children: [
          CachedNetworkImage(
            imageUrl: imgUrl,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                icon: const Icon(
                  Icons.arrow_back,
                ),
                onPressed: () {},
              ),
            ),
          ),
        ],
      );

  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => kToolbarHeight;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) => true;
}
