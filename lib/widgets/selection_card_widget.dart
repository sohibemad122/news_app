import 'package:flutter/material.dart';
import 'package:news_app/styles/app_colors.dart';
import 'package:news_app/styles/app_text_styles.dart';

class SelectionCardWidget extends StatelessWidget {
  const SelectionCardWidget({
    super.key,
    required this.title,
    required this.isSelected,
    required this.onTap
  });

  final String title ;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: _getBoxDecoration(),
        child: Text(
          title,
          style: AppTextStyles.regular16.copyWith(
            color: isSelected ? Colors.white : Colors.black
          ),
        ),
      ),
    );
  }

  BoxDecoration _getBoxDecoration() => BoxDecoration(
    color: isSelected ? AppColors.primary : AppColors.white,
    borderRadius: BorderRadius.circular(10),
    boxShadow: [
      BoxShadow(
        color: AppColors.lightGrey,
        blurRadius: 5
      )
    ]
  );
}