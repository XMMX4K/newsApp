import 'package:flutter/material.dart';
import 'package:newsapp/widgets/newsCateList.dart';
import 'package:newsapp/widgets/newsTile.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            newsTile(),
          ],
        ),
      ),
    );
  }
}
