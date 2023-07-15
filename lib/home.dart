import 'package:flutter/material.dart';
import 'package:news/contoller/fetch.dart';
import 'package:news/newsart.dart';
import 'package:news/newscontainer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isLoading = true;

  late NewsArt newsArt;

  // ignore: non_constant_identifier_names
  GetNews() async {
    newsArt = await FetchNews.fetchNews();

    setState(() {
      isLoading = false;
    });
  }

  @override
  void initState() {
    GetNews();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("NEUUZ"),
          centerTitle: true,
        ),
        body: PageView.builder(
            controller: PageController(initialPage: 0),
            scrollDirection: Axis.vertical,
            onPageChanged: (value) {
              setState(() {
                isLoading = true;
              });
              GetNews();
            },
            itemBuilder: (context, index) {
              return isLoading
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  : NewsContainer(
                      imgUrl: newsArt.imgUrl,
                      newsCnt: newsArt.newsCnt,
                      newsHead: newsArt.newsHead,
                      newsDes: newsArt.newsDes,
                      newsUrl: newsArt.newsUrl);
            }),
      ),
    );
  }
}
