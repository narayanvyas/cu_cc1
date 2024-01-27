import 'package:flutter/material.dart';

import 'login_page.dart';

void main() {
  runApp(MaterialApp(
    title: 'My nth App',
    home: LoginPage(),
  ));
}

// To create Stateful Page - type "stf"
// To create Stateless Page - type "stl"

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        centerTitle: true,
        title: Text(
          'My First Page',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Text('Hello'),
          Container(
            height: 30,
          ),
          Image.network(
              'https://cdn.pixabay.com/photo/2023/12/17/09/47/door-8453898_1280.jpg'),
          Text('Hello'),
          TextField(),
          ElevatedButton(
              onPressed: () {
                print('Button Clicked');
              },
              child: Text('Click Me')),
        ],
      ),
    );
  }
}
