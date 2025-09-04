import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/cubit/get_news_cubit.dart';
import 'package:news_app/styles/app_colors.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: context.read<GetNewsCubit>().searchController,
      onChanged: (value) {
        context.read<GetNewsCubit>().getNews();
      },
      decoration: InputDecoration(
        hintText: "Search For News...",
        prefixIcon: Icon(
          Icons.search,
          color: AppColors.primary,
        ),
        enabledBorder:  OutlineInputBorder(
          borderRadius: BorderRadius.circular(10)
        ),
        focusedBorder:OutlineInputBorder(
          borderRadius: BorderRadius.circular(10)
        ), 
      ),
    );
  }
}