import 'package:flutter/material.dart';

import '../util/job_card.dart';
import '../util/job_tiles.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List jobCardDetails = [
    ['lib/images/uber.png', 'UI / UX Designer', '45'],
    ['lib/images/google.png', 'Product Owner', '100'],
    ['lib/images/apple.png', 'QA Engineer', '80'],
    ['lib/images/nike.png', 'Store Operator', '40'],
  ];

  final List jobTileDetails = [
    ['lib/images/nike.png', 'Store Operator', '40', 'Nike'],
    ['lib/images/apple.png', 'QA Engineer', '80', 'Apple'],
    ['lib/images/uber.png', 'UI / UX Designer', '45', 'Uber'],
    ['lib/images/google.png', 'Product Owner', '100', 'Google'],
  ];

  var menuTextStyle = const TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: 18.0,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.grey[800],
        elevation: 0,
        title: const Text('J O B  A P P'),
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.grey[800],
          //header
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  DrawerHeader(
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.grey[900],
                        shape: BoxShape.circle,
                      ),
                      child: const Center(
                        child: Text(
                          'L O G O',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  //list of items
                  ListTile(
                    leading: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.home,
                        color: Colors.white,
                      ),
                    ),
                    title: Text(
                      'H O M E',
                      style: menuTextStyle,
                    ),
                  ),
                  ListTile(
                    leading: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.chat_bubble,
                        color: Colors.white,
                      ),
                    ),
                    title: Text(
                      'I N B O X',
                      style: menuTextStyle,
                    ),
                  ),
                  ListTile(
                    leading: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.settings,
                        color: Colors.white,
                      ),
                    ),
                    title: Text(
                      'S E T T I N G S',
                      style: menuTextStyle,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: ListTile(
                  leading: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.logout,
                      color: Colors.white,
                    ),
                  ),
                  title: Text(
                    'L O G O U T',
                    style: menuTextStyle,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 25,
          ),
          // Discover a new path
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Text(
              'Discover a New Path',
              style: TextStyle(
                color: Colors.grey[900],
                fontWeight: FontWeight.bold,
                fontSize: 28,
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          // search bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Row(
                      children: [
                        //search icon
                        Icon(Icons.search),
                        SizedBox(width: 10),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Search for job...',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                //preference button
                Container(
                  height: 48.0,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.grey[800],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Icon(
                    Icons.settings,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 50),
          //for you -> job cards
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Text(
              'For You',
              style: TextStyle(
                color: Colors.grey[900],
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: jobCardDetails.length,
              itemBuilder: (context, index) {
                return JobCard(
                  companyLogoImage: jobCardDetails[index][0],
                  jobTitle: jobCardDetails[index][1],
                  payRate: jobCardDetails[index][2],
                );
              },
            ),
          ),
          const SizedBox(height: 40),
          //recently added -> job tiles
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Text(
              'Recently Added',
              style: TextStyle(
                color: Colors.grey[900],
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: ListView.builder(
                itemCount: jobTileDetails.length,
                itemBuilder: (context, index) {
                  return JobTile(
                    companyLogoImage: jobTileDetails[index][0],
                    jobTitle: jobTileDetails[index][1],
                    payRate: jobTileDetails[index][2],
                    companyName: jobTileDetails[index][3],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
