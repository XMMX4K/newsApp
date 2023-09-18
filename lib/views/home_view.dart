import 'package:flutter/material.dart';
import 'package:newsapp/widgets/newsCateList.dart';
import 'package:newsapp/widgets/NewsListViewBuilder.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      floatingActionButton: Container(
        decoration: BoxDecoration(
            color: Colors.blue.withOpacity(0.5),
            borderRadius: BorderRadius.circular(500)),
        child: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_upward)),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'News 📜',
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: SizedBox(
                height: 100,
                child: newsCateListView(),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 10,
              ),
            ),
            NewsListViewBuilder(),
          ],
        ),
      ),
    );
  }
}
