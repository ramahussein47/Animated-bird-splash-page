import 'package:flutter/material.dart';



class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Directionality(
        textDirection: TextDirection.ltr,
        child: Scaffold(
          appBar: AppBar(
            title: const Text(
              "Animation page",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          body: ContentWidget(),
        ),
      ),
    );
  }
}

Widget ContentWidget() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Row(
        children: [
          const Text("HI Jasmin"),
        ],
      ),
    ],
  );
}
