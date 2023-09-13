import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/category_card.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({
    super.key,
  });
final List<CategoryModel> categories = const[
  CategoryModel(categoryName: 'Business', categoryImage:'assets/business.jpg'),
  CategoryModel(categoryName: 'Entertainment', categoryImage:'assets/entertainment.jpg'),
  CategoryModel(categoryName: 'General', categoryImage:'assets/general.jpg'),
  CategoryModel(categoryName: 'Health', categoryImage:'assets/health.jpg'),
  CategoryModel(categoryName: 'Science', categoryImage:'assets/science.jpg'),
  CategoryModel(categoryName: 'Sports', categoryImage:'assets/sports.jpg'),
  CategoryModel(categoryName: 'Technology', categoryImage:'assets/technology.jpg'),
];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context , index){
            return  CategoryCard(
              categoryModel: categories[index],
            );
          }
      ),
    );
  }
}
