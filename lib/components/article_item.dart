import 'package:flutter/material.dart';
import 'package:straksnl/screens/article_detail_screen.dart';

class ArticleItem extends StatelessWidget {
  final String id;
  final String title;
  final String date;
  final String imageUrl;
  final String articleText;

  const ArticleItem(
      {super.key,
      required this.id,
      required this.title,
      required this.date,
      required this.imageUrl,
      required this.articleText});

  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: Row(
        children: [
          SizedBox(
            width: 100,
            height: 100,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => ArticleDetailScreen(
                            title: title,
                            date: date,
                            imageUrl: imageUrl,
                            articleText: articleText)),
                  );
                },
                child: Image.network(
                  imageUrl,
                  fit: BoxFit.cover,
                  height: 100,
                  width: 50,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 100,
            width: 250,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Poppins',
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        date,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.bookmark,
                      size: 30,
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
