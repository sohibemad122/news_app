import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/cubit/get_news_cubit.dart';
import 'package:news_app/screens/news_filter_screen.dart';
import 'package:news_app/styles/app_colors.dart';
import 'package:news_app/widgets/get_news_bloc_builder.dart';
import 'package:news_app/widgets/search_bar_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        title: const Text('News'),
        backgroundColor: AppColors.primary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(child: SearchBarWidget()),

                IconButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) {
                          return BlocProvider.value(
                            value: context.read<GetNewsCubit>(),
                            child: const NewsFilterScreen(),
                          );
                        },
                      ),
                    );
                  },
                  icon: Icon(Icons.filter_list, color: AppColors.primary),
                ),
              ],
            ),

            Expanded(child: GetNewsBlocBuilder()),
          ],
        ),
      ),
    );
  }
}
