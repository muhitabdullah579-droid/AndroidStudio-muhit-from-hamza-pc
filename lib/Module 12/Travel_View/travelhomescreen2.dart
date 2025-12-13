import 'package:flutter/material.dart';

class TravelHomeScreen2 extends StatelessWidget {
  const TravelHomeScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "Explore",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        actions: [
          Icon(Icons.notifications_none, color: Colors.black),
          SizedBox(width: 12),
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // Search Bar
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Material(
                elevation: 4,
                borderRadius: BorderRadius.circular(10),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search destinations...",
                    prefixIcon: Icon(Icons.search),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(vertical: 14),
                  ),
                ),
              ),
            ),

            // Top Destinations
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "Top Destinations",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 10),

            Container(
              height: 140,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  destination("assets/OIP.webp", "Paris"),
                  destination("assets/OIP (2).webp", "Maldives"),
                  destination("assets/th.webp", "Dubai"),
                ],
              ),
            ),

            SizedBox(height: 20),

            // Popular Package
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "Popular Package",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            SizedBox(height: 10),
            packageCard(
              "assets/OIP (1).webp",
              "Romantic Paris Trip",
              799,
            ),

            SizedBox(height: 20),
            packageCard(
              "assets/OIP (1).webp",
              "Romantic Maldives Trip",
              799,
            ),
            SizedBox(height: 20),
            packageCard(
              "assets/OIP (1).webp",
              "Romantic Dubai Trip",
              799,
            ),
          ],
        ),
      ),
    );
  }

  // Destination Card
  Widget destination(String image, String name) {
    return Container(
      width: 120,
      margin: EdgeInsets.only(left: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
      alignment: Alignment.bottomLeft,
      padding: EdgeInsets.all(8),
      child: Text(
        name,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  // Package Card
  Widget packageCard(String image, String title, int price) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 6,
            offset: Offset(0, 3),
          ),
        ],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(image, width: 80, height: 80, fit: BoxFit.cover),
          ),
          SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style: TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold)),
                SizedBox(height: 5),
                Text("\$$price",
                    style: TextStyle(fontSize: 15, color: Colors.blue)),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text("Book"),
          ),
        ],
      ),
    );
  }
}