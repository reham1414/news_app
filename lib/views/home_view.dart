import 'package:flutter/material.dart';
import 'package:news_app/widgets/category_list_view.dart';
import 'package:news_app/widgets/news_list_view_builder.dart';
class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Row(
          mainAxisSize:MainAxisSize.min ,
          children: [
            Text('News',
            style: TextStyle(
              color: Colors.black
            ),
            ),
            Text('Cloud',
              style: TextStyle(
                  color: Colors.orangeAccent
              ),
            )
          ],
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: CategoryListView(),
            ),
            SliverToBoxAdapter(
              child: SizedBox(height: 32,),
            ),
           NewsListViewBuilder(category:'sports')
          ],
        ),
      ),
    );
  }
}

