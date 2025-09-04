import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/cubit/get_news_state.dart';
import 'package:news_app/models/country.dart';
import 'package:news_app/models/get_news_criteria.dart';
import 'package:news_app/models/news_item.dart';
import 'package:news_app/service/news_service.dart';

class GetNewsCubit extends Cubit<GetNewsState>{

  final NewsService newsService;

  GetNewsCubit({
    required this.newsService
  }):super(GetNewsInitial());

  Country selectedCountry = Country.countries[0];
  String? selectedCategory ;
  TextEditingController searchController = TextEditingController();

  @override
  Future<void> close() {
    searchController.dispose();
    return super.close();
  }

  void getNews()async{
    emit(GetNewsLoading());
    try {
      List<NewsItem> news = await newsService.getNews(
        criteria: GetNewsCriteria(
          searchTerm: searchController.text,
          category: selectedCategory,
          country: selectedCountry,
        )
      );
      emit(GetNewsSuccess(news: news));
    } catch (e) {
      emit(GetNewsFailed());
    }
  }

}