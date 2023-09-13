// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/models/category_model.dart';

class NewsTile extends StatelessWidget {
   NewsTile({super.key, required this.articleModel});
 final ArticleModel articleModel;
 CategoryModel? categoryModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: articleModel.image!=null ? Image.network(articleModel.image!,
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
            ) : Image.asset(categoryModel!.categoryImage)
        ),
        const SizedBox(height: 12,),
        Text(
          articleModel.title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            color: Colors.black87,
            fontSize: 20,
            fontWeight: FontWeight.w500
          ),
        ),
        const SizedBox(height: 12,),
        Text(
          articleModel.subTitle ?? '',
          maxLines: 2,
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 15
          ),
        )
      ],
    );
  }
}
