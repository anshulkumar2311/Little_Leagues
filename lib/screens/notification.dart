import 'package:flutter/material.dart';

import '../utils/constants.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: black,
        elevation: 0,
        title: Text(
          "Notification",
          style: text25Bold(white),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
        ],
      ),
      body: Container(
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
