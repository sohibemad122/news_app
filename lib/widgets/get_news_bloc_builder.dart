import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/cubit/get_news_cubit.dart';
import 'package:news_app/cubit/get_news_state.dart';
import 'package:news_app/widgets/news_list_view.dart';

class GetNewsBlocBuilder extends StatelessWidget {
  const GetNewsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetNewsCubit,GetNewsState>(
      builder: (context, state) {
        if(state is GetNewsLoading){
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        if (state is GetNewsFailed) {
          return Center(
            child: Text(
              "Failed To Load News",
            ),
          );
        }

        if (state is GetNewsSuccess) {
          return NewsListView(
            news: state.news,
          );
        }

        return Text("Unknown State");
      },
    );
  }
}