import 'dart:io';

import 'package:flutter/material.dart';

class ArticlesPage extends StatefulWidget {
  const ArticlesPage({Key? key}) : super(key: key);

  @override
  State<ArticlesPage> createState() => _ArticlesPageState();
}

class _ArticlesPageState extends State<ArticlesPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 226.0,
            child: Container(
            margin: const EdgeInsets.only(top: 15.0),
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Column(
                  children: [
                    Row(
                      children: <Widget>[
                        Image.asset('media/cover_2.png'),
                        Image.asset('media/cover_3.png'),
                        Image.asset('media/cover_1.png'),
                        Image.asset('media/cover_4.png'),
                    ]),
                  ]
              )
            )
          )),
          Expanded(
            child: ListView(
                children: [
                  Card(
                    color: Colors.white70,
                    elevation: 10,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    margin: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
                    child: const ListTile(
                      contentPadding: const EdgeInsets.all(15),
                      title: Text('Is recycling a waste?'),
                      subtitle: Text('ed ut perspiciatis unde omnis iste natus error '
                          'sit voluptatem accusantium doloremque laudantium, totam '
                          'rem aperiam, eaque ipsa quae ab illo ...'),
                    ),
                  ),
                  Card(
                    color: Colors.white70,
                    elevation: 10,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    margin: const EdgeInsets.all(10),
                    child: const ListTile(
                      contentPadding: const EdgeInsets.all(15),
                      title: Text('Sustainable solar power'),
                      subtitle: Text('At vero eos et accusamus et iusto odio '
                          'dignissimos ducimus qui blanditiis praesentium '
                          'voluptatum deleniti atque corrupti ...'),
                    ),
                  ),
                  Card(
                    color: Colors.white70,
                    elevation: 10,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    margin: const EdgeInsets.all(10),
                    child: const ListTile(
                      contentPadding: const EdgeInsets.all(15),
                      title: Text('Importance of recycling and why we should recycle'),
                      subtitle: Text('Temporibus autem quibusdam et aut officiis '
                          'debitis aut rerum necessitatibus saepe eveniet ut et '
                          'voluptates repudiandae sint et ...'),
                    ),
                  ),
                ],
              )
          )
        ],
      )
    );
  }
}
//
// class Article extends StatelessWidget {
//   const Article({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       color: Colors.amber,
//       elevation: 20,
//       shadowColor: Colors.green,
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
//       margin: EdgeInsets.all(20),
//       child: const ListTile(
//         title: Text("Some boring recycling paper"),
//         subtitle: Text("Even more boring paper description"),
//       ),
//     );
//   }
// }
