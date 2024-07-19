import 'package:flutter/material.dart';
import '../screens/profile_selection.dart';

class ProfileIcon extends StatelessWidget {
  const ProfileIcon({Key? key, this.iconSize, required this.color, this.icon})
      : super(key: key);

  final double? iconSize;
  final Color color;
  final Widget? icon; // Optional icon parameter

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: iconSize,
          height: iconSize,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(iconSize == null ? 6 : 4),
          ),
          child: icon ??
              CustomPaint(
                painter: Smile(), // Default smile icon
                size: Size(iconSize ?? 24.0, iconSize ?? 24.0),
              ),
        ),
      ],
    );
  }
}
