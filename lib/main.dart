import 'package:flutter/material.dart';
import 'pages/feed.dart';
import 'pages/profile.dart';
import 'pages/articles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        fontFamily: 'Ubuntu'
      ),
      routes: {
        '/feed': (context) => const FeedPage(),
        '/profile': (context) => const ProfilePage(),
      },

      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  final String title = 'Home Page';

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int index = 0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar (
        leading: const Icon(
          Icons.article_outlined,
          color: Color(0xff313030),),
        titleSpacing: 5,
        title: Text(
          widget.title,
          style: const TextStyle(
              fontSize: 18,
              color: Color(0xff313030)),
        ),
        backgroundColor: Colors.white,
      ),
      body: Stack(
        children: <Widget>[
          Offstage(
            offstage: index != 0,
            child: TickerMode(
              enabled: index == 0,
              child: const MaterialApp(
                  debugShowCheckedModeBanner:false,
                  home: FeedPage()),
            ),
          ),
          Offstage(
            offstage: index != 1,
            child: TickerMode(
              enabled: index == 1,
              child: const MaterialApp(
                  debugShowCheckedModeBanner:false,
                  home: ArticlesPage()),
            ),
          ),
          Offstage(
            offstage: index != 2,
            child: TickerMode(
              enabled: index == 2,
              child: const MaterialApp(
                  debugShowCheckedModeBanner:false,
                  home: ProfilePage()),
            ),
          )
        ],
      ),

      bottomNavigationBar: BottomNavigationBar (
        currentIndex: index,
        onTap: (int index) {
          setState(() {
            this.index = index;
          });
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_none),
            activeIcon: Icon(Icons.notifications),
            label: 'Feed'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.recycling),
            label: 'Articles'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            activeIcon: Icon(Icons.person),
            label: 'Profile'
          )
        ],
        ),
    );
  }
}
