import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Whatsap Clone',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  static List<String> dados = ['Grupo de Fubetboll', 'Namorada', 'Jogo'];
  List<Widget> Containers = [
    Container(
      color: Colors.blue,
      //child: Text('$index'),
    ),
    Container(
      color: Colors.white,
      //child: Text('$index'),
      child: ListView.builder(
        itemCount: dados.length,
        itemBuilder: (context, index) {
          var title = dados.elementAt(index);
          return Column(
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/img/avatar.jpg',
                        width: 100,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            title,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text("Hoje é dia de Footbool"),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 52, top: 20),
                        child: Column(
                          children: [
                            Text(
                              '12:00',
                              style: TextStyle(color: Colors.green),
                            ),
                            Container(
                              height: 25,
                              width: 25,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(500)),
                                  color: Colors.green),
                              child: Center(
                                child: Text(
                                  '2',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 60),
                child: Divider(
                  color: Colors.black45,
                ),
              ),
            ],
          );
        },
      ),
    ),
    Container(
      color: Colors.yellow,
      child: Column(
        children: [Text("Interessante")],
      ),
      //child: Text('$index'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // esse 3 é pelo numero de Tabs
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color(0xFF1D5D51),
          title: Text("Whatsaap Clone"),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: Icon(Icons.message)),
            IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
          ],
          bottom: TabBar(
            indicatorColor: Colors.white,
            indicatorWeight: 2,
            tabs: [
              Tab(
                text: 'Ligações',
              ),
              Tab(
                text: 'Conversas',
              ),
              Tab(
                text: 'Contacto',
              ),
            ],
          ),
        ),
        body: TabBarView(children: Containers),
      ),
    );
  }
}
