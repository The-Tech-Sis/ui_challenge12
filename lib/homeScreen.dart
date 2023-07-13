// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  double xoffset = 0;
  double yoffset = 0;
  double scaleFactor = 1;
  bool drawerIsOpen = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: AnimatedContainer(
          transform: Matrix4.translationValues(xoffset, yoffset, 0)..scale(scaleFactor),
          duration: const Duration(milliseconds: 250),
          color: const Color.fromARGB(255, 244, 244, 244),
          child:  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            const SizedBox(height: 25),
            Container(
              margin:const EdgeInsets.symmetric(horizontal: 4.0) ,
              child: Row(
                mainAxisAlignment:MainAxisAlignment.spaceBetween,
                children: [
                  drawerIsOpen? IconButton(
                    icon: const Icon(Icons.arrow_back_ios),
                    onPressed: (){
                      setState(() {
                        xoffset = 0;
                        yoffset = 0;
                        scaleFactor = 1;
                        drawerIsOpen = false;
                      });
                    },
                  ): 
                  IconButton(
                    icon: const Icon(Icons.menu), 
                    onPressed: (){
                      setState(() {
                        xoffset = 260;
                        yoffset = 150;
                        scaleFactor = 0.6;
                        drawerIsOpen = true;
                      });
                    }
                  ),
                  const Text("Home",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.notification_add),
                    onPressed: (){}
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left:20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Hi Teresa G!",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w900
                    ),
                  ),
                  SizedBox(height: 3),
                  Text("Explore  Here..",
                    style: TextStyle(
                      color: Color.fromARGB(255, 112, 112, 112),
                      fontSize: 14,
                      fontWeight: FontWeight.w700, 
                    ),
                  ),
                ]
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    margin: const EdgeInsets.symmetric(vertical: 12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white),
                      height: 60,
                      width: 300,
                    child: Row(
                      children: [
                        IconButton(icon: const Icon(Icons.search,
                        size: 50,), 
                        onPressed: (){},
                        ),
                        const Text("Search Furniture",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.w500, 
                        ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.black
                    ),
                  ),
                ],
              ),
            ),
            
            Expanded(
          
              child: Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 20, right: 20.0, top:15),
                    padding: const EdgeInsets.all(20),
                    height: 150,
                    width: 400,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Explore Latest",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w900, 
                          ),
                        ),
                        const Text("Furniture with Price",
                          style: TextStyle(
                          color: Color.fromARGB(255, 112, 112, 112),
                          fontSize: 14,
                          fontWeight: FontWeight.w700, 
                          ),
                        ),
                        const SizedBox(height: 6),
                        Container(
                          height: 30,
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.black
                          ),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(vertical:8.0),
                            child: 
                              Text("Explore",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color.fromARGB(255, 217, 217, 217),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500, 
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 30.0),
                    child: Align(
                      child: Image.asset("images/wingback2.png"),
                      alignment: Alignment.topRight,  
                    ),
                  )
                ],
              ),
            ),
            
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 Text("The most searched chair",
                    style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w900, 
                        ),
                      ),
                  Text("View all",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w900, 
                    ),
                  ),
                ],
              ),
            ),
          
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Stack(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 20, top:20),
                        height: 200,
                        width: 180,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                        ),
                        child: Column(
                          children: [
                            Container(height: 120),
                            Padding(
                              padding: const EdgeInsets.only(top:10.0, bottom: 10, left: 20, right: 8),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Grey chair",
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w900, 
                                          ),
                                        ),
                                        SizedBox(height: 5),
                                        Text("#6000*",
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500, 
                                          ),
                                        ),
                                      ],
                                    ),
                                    IconButton(
                                      icon: const Icon(Icons.favorite), 
                                      onPressed: (){}
                                    ),
                                  ], 
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right:30.0),
                          child: Align(
                            child: Image.asset("images/armchairs.png"),
                          ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Expanded(
                  child: Stack(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 20, top:20),
                        height: 200,
                        width: 180,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                        ),
                        child: Column(
                          children: [
                            Container(height: 120),
                            Padding(
                              padding: const EdgeInsets.only(top:10.0, bottom: 10, left: 20, right: 8),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Black chair",
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w900, 
                                          ),
                                        ),
                                        SizedBox(height: 5),
                                        Text("#5000*",
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500, 
                                          ),
                                        ),
                                      ],
                                    ),
                                    IconButton(
                                      icon: const Icon(Icons.favorite_border), 
                                      onPressed: (){}
                                    ),
                                  ], 
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right:30.0),
                          child: Align(
                            child: Image.asset("images/swingback.png"),
                            alignment: Alignment.topCenter,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                   Text("Recommended chair For You",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w900, 
                      ),
                    ),
                    Text("View all",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w900, 
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

    bottomNavigationBar:const GNav(
      tabs: [
        GButton(icon: Icons.home,
        text: "Home",),
        GButton(icon: Icons.search,
        text: "Search",),
        GButton(icon: Icons.favorite,
        text: "Favorite",),
        GButton(icon: Icons.bookmark,
        text: "Bookmark",)

      ],
    ),
    );
  }
}