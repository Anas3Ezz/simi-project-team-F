import 'package:flutter/cupertino.dart';
import 'package:my_project/widgets/home_screen_widgets/category_widget.dart';

class CategoryListBuilder extends StatelessWidget {
  CategoryListBuilder({super.key});
  List<String> categories = ["denteeth", "Theripist", "surgeon"];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, i) {
        return CategoryWidget(category: categories[i]);
      },
      separatorBuilder: (context, i) {
        return SizedBox(width: 15);
      },
      itemCount: categories.length,
      scrollDirection: Axis.horizontal,
    );
  }
}
