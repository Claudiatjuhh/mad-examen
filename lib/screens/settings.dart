import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
       return SafeArea(
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
            child: Text(
              'Settings',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          Container(
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
          Container(
            margin: const EdgeInsets.only(top: 10, left: 20),
            height: 50,
            width: 300,
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  width: 2,
                  color: Color(0xffc2c2c2),
                ),
              ),
            ),
            child: Row(
              children: const [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Icon(
                    Icons.person,
                    size: 30,
                  ),
                ),
                Text(
                  'Account',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                Spacer(),
                Icon(Icons.arrow_forward_ios_rounded),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10, left: 20),
            height: 50,
            width: 300,
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  width: 2,
                  color: Color(0xffc2c2c2),
                ),
              ),
            ),
            child: Row(
              children: const [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Icon(
                    Icons.notifications,
                    size: 30,
                  ),
                ),
                Text(
                  'Notificaties',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                Spacer(),
                Icon(Icons.arrow_forward_ios_rounded),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10, left: 20),
            height: 50,
            width: 300,
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  width: 2,
                  color: Color(0xffc2c2c2),
                ),
              ),
            ),
            child: Row(
              children: const [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Icon(
                    Icons.lock,
                    size: 30,
                  ),
                ),
                Text(
                  'Privacy en veiligheid',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                Spacer(),
                Icon(Icons.arrow_forward_ios_rounded),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10, left: 20),
            height: 50,
            width: 300,
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  width: 2,
                  color: Color(0xffc2c2c2),
                ),
              ),
            ),
            child: Row(
              children: const [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Icon(
                    Icons.accessible,
                    size: 30,
                  ),
                ),
                Text(
                  'Toegankelijkheid',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                Spacer(),
                Icon(Icons.arrow_forward_ios_rounded),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10, left: 20),
            height: 50,
            width: 300,
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  width: 2,
                  color: Color(0xffc2c2c2),
                ),
              ),
            ),
            child: Row(
              children: const [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Icon(
                    Icons.headphones,
                    size: 30,
                  ),
                ),
                Text(
                  'Hulp en support',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                Spacer(),
                Icon(Icons.arrow_forward_ios_rounded),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10, left: 20),
            height: 50,
            width: 300,
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  width: 2,
                  color: Color(0xffc2c2c2),
                ),
              ),
            ),
            child: Row(
              children: const [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Icon(
                    Icons.help,
                    size: 30,
                  ),
                ),
                Text(
                  'Over ons',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                Spacer(),
                Icon(Icons.arrow_forward_ios_rounded),
              ],
            ),
          ),
        ],
      ),
    );
  }
}