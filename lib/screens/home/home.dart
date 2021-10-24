// ignore_for_file: prefer_const_literals_to_create_immutables
// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:whatsapp_ui/screens/home/listview.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    TabController _tabcontroller = TabController(length: 3, vsync: this);
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('WhatsApp'),
          bottom: TabBar(
            controller: _tabcontroller,
            tabs: <Widget>[
              Tab(text: 'Chats'),
              Tab(text: 'Status'),
              Tab(text: 'Calls')
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabcontroller,
          children: [
            listview(),
            listview(),
            listview(),
          ],
        ),
      ),
    );
  }
}
