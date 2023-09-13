// a067912b409941b38210e0b100960f62
// https://newsapi.org/v2/top-headlines?country=us&apiKey=a067912b409941b38210e0b100960f62
// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news_app/models/article_model.dart';
class NewsService{
Future<List<ArticleModel>> getTopHeadlinesNews({required String category}) async{
  try {
    Uri url=
  Uri.parse('https://newsapi.org/v2/top-headlines?country=us&apiKey=a067912b409941b38210e0b100960f62&category=$category');
    http.Response response = await
       http.get(url);
    Map<dynamic , dynamic> jsonData = jsonDecode(response.body);
    List<dynamic> articles = jsonData['articles'];
    List<ArticleModel> articlesList = [];
    for(var article in articles){
      ArticleModel articleModel =ArticleModel.fromJson(article);
      articlesList.add(articleModel);
    }
    return articlesList;
  }
  catch (e) {
   return [];
  }
}
}