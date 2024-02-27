import 'package:flutter/material.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/utils/helpers_functions.dart';

class VideoButtons extends StatelessWidget {
  final VideoPost video;
  final bool isLiked;

  const VideoButtons({
    super.key,
    required this.video,
    required this.isLiked,
  });

  @override
  Widget build(BuildContext context) {
    return const Positioned(
      bottom: 20,
      right: 10,
      child: Column(
        children: [
          CustomButton(icon: Icons.favorite),
          CustomButton(icon: Icons.comment),
          CustomButton(icon: Icons.send),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final bool isLiked;
  final IconData icon;
  final Color activeColor;
  final Color inactiveColor;

  const CustomButton({
    super.key,
    required this.icon,
    this.isLiked = false,
    this.activeColor = Colors.red,
    this.inactiveColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
            onPressed: () {},
            icon: Icon(
              icon,
              color: isLiked ? activeColor : inactiveColor,
            )),
        Text(formatNumber(1231345))
      ],
    );
  }
}
