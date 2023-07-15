import 'package:flutter/material.dart';

// ignore: must_be_immutable
class NewsContianer extends StatelessWidget {
  String imgurl;
  String newshead;
  String newsdesc;
  String newsurl;

  NewsContianer(
      {super.key,
      required this.imgurl,
      required this.newsdesc,
      required this.newshead,
      required this.newsurl});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(children: [
        Image.network(height: 400, width: 100, imgurl),
        Text(
          newshead,
          style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          newsdesc,
          style: const TextStyle(
            fontSize: 16,
          ),
        ),
        const Spacer(),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            ElevatedButton(onPressed: () {}, child: const Text("Read More")),
          ],
        ),
      ]),
    );
  }
}
