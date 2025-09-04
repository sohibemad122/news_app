import 'package:flutter/material.dart';
import 'package:news_app/models/news_item.dart';
import 'package:news_app/widgets/news_item_widget.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({
    super.key,
    required this.news
  });

  final List<NewsItem> news;

  @override
  Widget build(BuildContext context) {
    if (news.isEmpty) {
      return Text("Not News Found");
    }
    return ListView.separated(
      padding: EdgeInsets.symmetric(
        vertical: 10
      ),
      itemCount: news.length,
      separatorBuilder: (context, index) => SizedBox(
        height: 15,
      ),
      itemBuilder: (context, index) {
        return NewsItemWidget(
          item: news[index],
        );
      },
    );
  }
}