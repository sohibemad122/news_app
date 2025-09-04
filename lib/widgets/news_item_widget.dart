import 'package:flutter/material.dart';
import 'package:news_app/models/news_item.dart';
import 'package:news_app/styles/app_colors.dart';
import 'package:news_app/styles/app_text_styles.dart';
import 'package:news_app/widgets/icon_with_text_widget.dart';
import 'package:news_app/widgets/launch_url_button.dart';

class NewsItemWidget extends StatelessWidget {
  const NewsItemWidget({
    super.key,
    required this.item
  });

  final NewsItem item;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: _getBoxDecoration(),
      child: Column(
        spacing: 5,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          SizedBox(
            height: 200,
            child: Stack(
              children: [
                Image.network(
                  item.imageUrl,
                  fit: BoxFit.cover,
                  width: double.infinity,
                  errorBuilder: (context, error, stackTrace) {
                    return Center(
                      child: Icon(
                        Icons.image_outlined,
                        size: 100,
                      ),
                    );
                  },
                ),

                PositionedDirectional(
                  end: 15,
                  top: 15,
                  child: LaunchUrlButton(
                    item: item,
                  ),
                )
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              spacing: 5,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: AppTextStyles.bold24,
                ),
                
                Text(
                  item.describtion??"",
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: AppTextStyles.regular18.copyWith(
                    color: AppColors.grey
                  ),
                ),
                
                IconWithTextWidget(
                  iconData:Icons.person , 
                  text: "By ${item.author??"Unknown"}",
                ),
                
                IconWithTextWidget(
                  iconData: Icons.article, 
                  text: "Source : ${item.sourceName}",
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  BoxDecoration _getBoxDecoration() {
    return BoxDecoration(
      color: AppColors.white,
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(
          color: AppColors.lightGrey,
          blurRadius: 5
        )
      ]
    );
  }
}