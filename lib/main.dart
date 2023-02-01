import 'package:flutter/material.dart';
import 'HomeScreen.dart';
import 'drawerScreen.dart';


void main() {
  runApp( const
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage()
    ),
  );
} 
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  //const HomePage ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: const [ 
          DrawerScreen(),
          HomeScreen()
        ],
      ),
    );
  }
}
