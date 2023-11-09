import 'package:flutter/material.dart';
import 'package:newsapp/model/NewsResponse.dart';

class NewsItem extends StatelessWidget {
  News news;
  NewsItem({required this.news});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Image.network(news.urlToImage ?? "")),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(news.author ?? "",
                style: TextStyle(color: Colors.grey, fontSize: 11)),
          ),
          Text(news.title ?? ""),
          SizedBox(
            height: 5,
          ),
          Text(news.publishedAt ?? "",
              textAlign: TextAlign.end,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 10,
              )),
        ],
      ),
    );
  }
}
