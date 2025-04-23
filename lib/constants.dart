import 'package:flutter/material.dart';
//colors
const kBlueColor = Colors.blue;
const kBackgroundColor = Color(0xFF4A90E2);
const kLighterShadeForBackground = Color(0xFFE3F2FD);
const kButtonBackgroundColor = Color(0xFF0D6EFD);
const kDarkBlueGreyColor = Color(0xFF1B1E28);
const kBrightColorForBackground = Color(0xFFFDF2EC);
const kTextColor = Colors.white;
const kBoxDecoration1Color = Color(0xFFB0C4DE);
const kBoxDecoration2Color = Color(0xFFCAE9FF);
const kListIconColor = Colors.black87;
const kStarIconColor = Colors.amber;
const kFontColor = Colors.black;
final kLocationColor = Colors.grey[700];

//icons


const kStarIcon = Icons.star;
const kStarHalfIcon = Icons.star_half;
const kProfileIcon = Icons.account_circle;
const kLocationIcon = Icons.location_on;


const Widget kListIcon = _ListIcon();

class _ListIcon extends StatelessWidget {
  const _ListIcon();

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'images/listIcon.png',
      width: 24,
      height: 24,
      fit: BoxFit.contain,
    );
  }
}