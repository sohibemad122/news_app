import 'package:news_app/models/news_item.dart';

abstract class GetNewsState{}

class GetNewsInitial extends GetNewsState{}

class GetNewsLoading extends GetNewsState{}

class GetNewsFailed extends GetNewsState{}

class GetNewsSuccess extends GetNewsState{

  final List<NewsItem>news;

  GetNewsSuccess({
    required this.news,
  });
}