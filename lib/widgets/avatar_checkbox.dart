import 'package:flutter/material.dart';
import 'package:flutter_flip_card/flutter_flip_card.dart';

class AvatarCheckbox extends StatefulWidget {
  const AvatarCheckbox(
      {super.key,
      required this.isCheck,
      required this.imageUrl,
      required this.onTap});

  final bool isCheck;
  final String imageUrl;
  final VoidCallback onTap;

  @override
  State<AvatarCheckbox> createState() => _AvatarCheckboxState();
}

class _AvatarCheckboxState extends State<AvatarCheckbox> {
  FlipCardController flipCardController = FlipCardController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        flipCardController.flipcard();
        widget.onTap();
      },
      child: FlipCard(
        rotateSide: RotateSide.right,
        controller: flipCardController,
        animationDuration: const Duration(milliseconds: 300),
        backWidget: const CircleAvatar(child: Icon(Icons.check)),
        frontWidget: CircleAvatar(
          backgroundImage: NetworkImage(widget.imageUrl),
        ),
      ),
    );
  }
}
