// ignore_for_file: prefer_typing_uninitialized_variables
import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/services/news_services.dart';
import 'package:news_app/widgets/news_list_view.dart';
class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({super.key, required this.category});
final String category;
  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
   var future;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    future=NewsService().getTopHeadlinesNews(category: widget.category);
  }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      future:future ,
        builder: (context , snapshot){
      if(snapshot.hasData){
        return NewsListView(articles:snapshot.data!);
      }
      else if(snapshot.hasError){
        return const SliverToBoxAdapter(child: Text('oops , there is an error,try again later'));
      }
      else{
        return const SliverToBoxAdapter(child: Center(child: CircularProgressIndicator(),),);
      }
    });
  }}

