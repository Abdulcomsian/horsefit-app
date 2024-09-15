import 'package:horse_fit/core/constants/exports.dart';

class SelectableOptionCardModel {
  SelectableOptionCardModel({
    required this.icon,
    required this.title,
    required this.subTitle,
    required this.isSelected,
    this.postPrivacy,
    this.isNetworkImg,
    this.onTap,
  });

  final String icon;
  final String title;
  final String subTitle;
  final bool isSelected;
  final PostPrivacy? postPrivacy;
  final bool? isNetworkImg;
  final VoidCallback? onTap;
}
