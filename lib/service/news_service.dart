import 'package:dio/dio.dart';
import 'package:news_app/models/get_news_criteria.dart';
import 'package:news_app/models/news_item.dart';

class NewsService {
  
  final Dio dio;

  const NewsService({
    required this.dio
  });

  Future<List<NewsItem>> getNews({
    required GetNewsCriteria criteria
  })async{
      Response response = await dio.get(
        "https://newsapi.org/v2/top-headlines",
        queryParameters: criteria.toQueryParameters,
      );

      if (response.statusCode != 200) {
        throw Exception("Failed To Load News");
      }
      
      List<NewsItem> news = (response.data["articles"] as List).map(
        (e) =>  NewsItem.fromMap(e),
      ).toList();
      
      return news;
  }

}