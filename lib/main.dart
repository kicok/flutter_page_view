import 'package:flutter/material.dart';
import 'package:flutter_page_view/carousel_screen.dart';
import 'package:flutter_page_view/form_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PageView Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pageview'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(),
            MaterialButton(
              color: Colors.deepPurpleAccent,
              minWidth: 200,
              height: 50,
              elevation: 9,
              child: Text(
                'CarouselPageView',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return CarouselScreen();
                  }),
                );
              },
            ),
            SizedBox(height: 20.0),
            MaterialButton(
              color: Colors.deepPurpleAccent,
              minWidth: 200,
              height: 50,
              elevation: 9,
              child: Text(
                'FormPageView',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return FormScreen();
                  }),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
