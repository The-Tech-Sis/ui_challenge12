// ignore_for_file: file_names

import 'package:flutter/material.dart';
//import 'package:ui_challenge12/config.dart';


class DrawerScreen extends StatefulWidget {
  const DrawerScreen({ Key? key }) : super(key: key);

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
          ),
          const Text("Welcome John!",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          Row(
            children: [
              IconButton(
                icon: const Icon(
                  Icons.home_outlined,
                  color: Colors.white,
                ), 
                onPressed: (){}
              ),
              const Text("Home Page",
                style: TextStyle(
                  fontSize: 20,
                fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Row(
            children: [
              IconButton(
                  icon: const Icon(
                    Icons.handshake_outlined,
                    color: Colors.white,
                  ), 
                  onPressed: (){
                  }
                ),
                const Text("Best Deal Chair",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
            ],
          ),Row(
            children: [
              IconButton(
                  icon: const Icon(
                    Icons.notifications_none_rounded,
                    color: Colors.white,
                  ), 
                  onPressed: (){
                  }
                ),
                const Text("Notifications",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
            ],
          ),
          Row(
            children: [
              IconButton(
                  icon: const Icon(
                    Icons.star_outline_rounded,
                    color: Colors.white,
                  ), 
                  onPressed: (){
                  }
                ),
                const Text("Rate Us",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
            ],
          ),
          Row(
            children: [
              IconButton(
                  icon: const Icon(
                    Icons.warning_amber_rounded,
                    color: Colors.white,
                  ), 
                  onPressed: (){
                  }
                ),
                const Text("Help Center",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
            ],
          ),
          Row(
            children: [
              IconButton(
                  icon: const Icon(
                    Icons.signpost_outlined,
                    color: Colors.white,
                  ), 
                  onPressed: (){
                  }
                ),
                const Text("Sign Out",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 248, 241, 241),
                  ),
                ),
            ],
          ),

        ],
      ),
    );
  }
}