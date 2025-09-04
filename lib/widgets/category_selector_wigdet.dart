import 'package:flutter/material.dart';
import 'package:news_app/widgets/selection_card_widget.dart';

class CategorySelectorWidget extends StatefulWidget {
  const CategorySelectorWidget({
    super.key,
    required this.initialCategory,
    required this.onChnaged,
  });

  final String? initialCategory;
  final void Function(String? selectedCategory) onChnaged;

  @override
  State<CategorySelectorWidget> createState() => _CategorySelectorWidgetState();
}

class _CategorySelectorWidgetState extends State<CategorySelectorWidget> {

  late String? selectedCategory = widget.initialCategory;

  List<String> get _categories => [
    "General",
    "Entertainment",
    "Business",
    "Health",
    "Science",
    "Sports",
    "Technology",
  ];

  @override
  Widget build(BuildContext context) {
    
    return Wrap(
      spacing: 10,
      runSpacing: 8,
      children: [
        for(int i = 0 ;i<_categories.length ; i++)
        SelectionCardWidget(
          title: _categories[i], 
          isSelected: _categories[i] == selectedCategory, 
          onTap: (){
            if (selectedCategory == _categories[i]) {
              selectedCategory = null;
            } else {
              selectedCategory = _categories[i];
            }
            setState(() {});
            widget.onChnaged(selectedCategory);
          },
      )
      ],
    );
  }
}