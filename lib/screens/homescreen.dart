import 'package:flutter/material.dart';
import 'package:straksnl/components/carousel_with_dots_page.dart';
import '../components/article_item.dart';
import '../models/article.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> imgList = [
    'images/slides1.jpg',
    'images/slides2.jpg',
    'images/slides3.jpg',
    'images/slides4.jpg',
    'images/slides5.jpg',
    'images/slides6.jpg',
  ];

  List<Article> loadedArticles = [
    Article(
      id: '0',
      title: 'Worlds weirdest guitar',
      date: '02-02-2023',
      articleText: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
      imageUrl:
          'https://img.freepik.com/premium-vector/music-funny-dj-mixing-dj-music-lover-retro-vintage-music-dj-t-shirt-design_594005-1385.jpg?size=338&ext=jpg&ga=GA1.1.994015311.1669226653&semt=sph',
    ),
    Article(
      id: '1',
      title: 'How pionen will save your life.',
      date: '02-02-2023',
      articleText: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
      imageUrl:
          'https://img.freepik.com/premium-photo/one-child-figure-standing-outside-group-being-excluded-concept-picture-about-someone-being-diffe_158001-1766.jpg?size=626&ext=jpg&ga=GA1.1.994015311.1669226653&semt=sph',
    ),
    Article(
      id: '2',
      title: 'This is a very dangerous flower',
      date: '02-02-2023',
      articleText: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
      imageUrl:
          'https://img.freepik.com/premium-photo/pink-yellow-white-fresh-dahlia-flower-macro-photo-picture-color-emphasizing-light-diffe_597099-375.jpg?size=626&ext=jpg&ga=GA1.2.994015311.1669226653&semt=sph',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: 500,
        child: Column(
          children: [
            CarouselWithDots(imgList: imgList),
            Expanded(
              child: SizedBox(
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Text(
                        'All news',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Text(
                        'Short news',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Text(
                        'Politics',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Text(
                        'Climate',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Text(
                        'Science',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: SizedBox(
                height: 400,
                child: GridView.builder(
                  itemCount: loadedArticles.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    childAspectRatio: 1 / 3,
                    mainAxisSpacing: 10,
                  ),
                  itemBuilder: ((context, i) => ArticleItem(
                        id: loadedArticles[i].id,
                        title: loadedArticles[i].title,
                        imageUrl: loadedArticles[i].imageUrl,
                        date: loadedArticles[i].date,
                        articleText: loadedArticles[i].articleText,
                      )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
