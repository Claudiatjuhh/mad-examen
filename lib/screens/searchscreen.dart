import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: const EdgeInsets.fromLTRB(20, 10, 0, 0),
        width: 350,
        height: 50,
        decoration: BoxDecoration(
          color: const Color(0xffececec),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          children: const [
            Padding(
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Icon(
                Icons.search,
                color: Color(0xffc2c2c2),
                size: 28,
              ),
            ),
            Text(
              'Zoeken..',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Color(0xffc2c2c2),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
