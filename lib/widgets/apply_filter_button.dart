import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/cubit/get_news_cubit.dart';
import 'package:news_app/screens/news_filter_screen.dart';
import 'package:news_app/styles/app_colors.dart';
import 'package:news_app/styles/app_text_styles.dart';

class ApplyFilterButton extends StatelessWidget {
  const ApplyFilterButton({super.key,required this.screenState});

  final NewsFilterScreenState screenState;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=>_onTap(context),
      child: Container(
        height: 48,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.primary
        ),
        child: Center(
          child: Text(
            "Apply Filters",
            style: AppTextStyles.regular16.copyWith(
              color: AppColors.white
            ),
          ),
        ),
      ),
    );
  }

  void _onTap(BuildContext context) {
    context.read<GetNewsCubit>().selectedCountry = screenState.selectedCountry ;
    context.read<GetNewsCubit>().selectedCategory = screenState.selectedCategory;
    context.read<GetNewsCubit>().getNews();
    Navigator.pop(context);
  }
}

