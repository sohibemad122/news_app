import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/cubit/get_news_cubit.dart';
import 'package:news_app/screens/home_screen.dart';
import 'package:news_app/service/news_service.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (context) => GetNewsCubit(
          newsService: NewsService(dio: Dio())
        )..getNews(),
        child: HomeScreen(),
      ),
    );
  }
}
