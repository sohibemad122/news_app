import 'package:flutter/material.dart';
import 'package:news_app/models/news_item.dart';
import 'package:news_app/styles/app_colors.dart';
import 'package:url_launcher/url_launcher.dart';

class LaunchUrlButton extends StatelessWidget {
  const LaunchUrlButton({
    super.key,
    required this.item
  });

  final NewsItem item;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _onTap,
      child: CircleAvatar(
        radius: 25,
        backgroundColor: AppColors.primary,
        child: Icon(
          Icons.launch,
          color: AppColors.white,
        ),
      ),
    );
  }

  void _onTap() {
    launchUrl(Uri.parse(item.url));
  }
}