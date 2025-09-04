
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/cubit/get_news_cubit.dart';
import 'package:news_app/models/country.dart';
import 'package:news_app/styles/app_text_styles.dart';
import 'package:news_app/widgets/apply_filter_button.dart';
import 'package:news_app/widgets/category_selector_wigdet.dart';
import 'package:news_app/widgets/country_selector_widget.dart';

class NewsFilterScreen extends StatefulWidget {
  const NewsFilterScreen({super.key});

  @override
  State<NewsFilterScreen> createState() => NewsFilterScreenState();
}

class NewsFilterScreenState extends State<NewsFilterScreen> {
  late Country selectedCountry = context.read<GetNewsCubit>().selectedCountry;

  late String? selectedCategory = context.read<GetNewsCubit>().selectedCategory;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('News Filter'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          spacing: 10,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Select Country",
              style: AppTextStyles.bold18,
            ),
            CountrySelectorWidget(
              initialCountry:selectedCountry,
              onChnaged: (country){
                selectedCountry= country;
              },
            ),
        
            SizedBox(height: 10,),
        
            Text(
              "Select Category",
              style: AppTextStyles.bold18,
            ),

            CategorySelectorWidget(
              initialCategory:selectedCategory,
              onChnaged: (category){
                selectedCategory = category; 
              },
            ),

            Spacer(),

            ApplyFilterButton(
              screenState: this,
            ),

            SizedBox(height: 20,)
          ],
        ),
      ),
    );
  }
}