import 'package:flutter/material.dart';

class TravelHomeScreen extends StatelessWidget {
  final List<Map<String, String>> destination = [
    {'name': "Paris",
      'image': 'https://media.istockphoto.com/id/2119799972/photo/spring-evening-view-of-the-eiffel-tower-in-paris.jpg?s=612x612&w=0&k=20&c=eToYv7xbRNVqLhyKfHoF2oQLb2YFd-RDxoOgt6zoTZo='},
    {'name': "Dubai",
      'image': 'https://media.istockphoto.com/id/1331100622/photo/view-of-buildings-streets-beautiful-in-various-angles-in-dubai.jpg?s=612x612&w=0&k=20&c=M5GXmSOPo8VljM06CIJqKRgAlEPZkqwmNP-_rtzScec='},
    {'name': "Maldives",
      'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRVQUM8CZW4SJjIzXA-kVJFdw60VenB-Lk1tQ&s'},
    {'name': "Bali",
      'image': 'https://media.istockphoto.com/id/675172642/photo/pura-ulun-danu-bratan-temple-in-bali.jpg?s=612x612&w=0&k=20&c=_MPdmDviIyhldqhf7t6s63C-bZbTGfNHMlJP9SIa8Y0='},
  ];
  final List<Map<String, String>> packages = [
    {"title": 'Romantic Paris Gateway', 'price': '\$800',
      'image': 'https://plus.unsplash.com/premium_photo-1661919210043-fd847a58522d?w=1000&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cGFyaXN8ZW58MHx8MHx8fDA%3D'},
    {"title": 'Dubai Tour', 'price': '\$800',
      'image': 'https://plus.unsplash.com/premium_photo-1697729914552-368899dc4757?w=1000&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8ZHViYWl8ZW58MHx8MHx8fDA%3D'},
    {"title": 'Maldives Tour', 'price': '\$800',
      'image': 'https://images.pexels.com/photos/1483053/pexels-photo-1483053.jpeg'},
    {"title": 'Bali Adventure Tour', 'price': '\$800',
      'image': 'https://plus.unsplash.com/premium_photo-1677829177642-30def98b0963?w=1000&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8YmFsaXxlbnwwfHwwfHx8MA%3D%3D'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "Travel App",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: ListView(
        children: [
          Stack(
            children: [
              Image.network(
                'src',
                height: 20,
                width: double.infinity,
                fit: BoxFit.cover,
              ),

              // Search Bar
              // Padding(
              //   padding: const EdgeInsets.all(16.0),
              Container(height: 150, color: Colors.black.withOpacity(0.4)),

              Positioned(
                left: 20,
                bottom: 30,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Explore The Tourists spots',
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                    SizedBox(height: 10),
                    Container(
                      width: 300,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search Destination',
                          filled: true,
                          fillColor: Colors.white,
                          prefixIcon: Icon(Icons.search),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
            // Category Scroll
            // Travel Cards Grid
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text('Top', style: TextStyle()),
          ),
          GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              childAspectRatio: 3 / 2,
            ),
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                    image: NetworkImage(destination[index]['image']!),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                  alignment: Alignment.bottomLeft,
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.transparent, Colors.black45],
                    ),
                  ),
                  child: Text(
                    destination[index]['name']!,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              );
            },
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text('Trending Packages', style: TextStyle()),
          ),
          SizedBox(height: 20),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: packages.length,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.95),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Row(
                    children: [
                      Image.network(
                        packages[index]['image']!,
                        height: 120,
                        width: 120,
                        fit: BoxFit.cover,
                      ),
                      Expanded(
                        child: Padding(
                            padding: const EdgeInsets.all(12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                destination[index]['title']!,
                                style: TextStyle(fontSize: 16),
                              ),
                              SizedBox(height: 6,),
                              Row(
                                children: [
                                  Icon(Icons.schedule,size: 16,color: Colors.white,),
                                  SizedBox(height: 6,),
                                  Text(
                                    '4 nights * 5 days',
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              ),
                              SizedBox(height: 6,),
                              Row(
                                children: [
                                  Icon(Icons.schedule,size: 16,),
                                  SizedBox(height: 6,),
                                  Text(
                                    packages[index]['price']!,
                                    style: TextStyle(color: Colors.blueAccent,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

// class ChipWidget extends StatelessWidget {
//   final String label;
//   const ChipWidget(this.label, {super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: const EdgeInsets.only(right: 12),
//       padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
//       decoration: BoxDecoration(
//         color: Colors.blue.shade100,
//         borderRadius: BorderRadius.circular(20),
//       ),
//       child: Text(label, style: const TextStyle(fontWeight: FontWeight.w600)),
//     );
//   }
// }
//
// class TravelCard extends StatelessWidget {
//   final String title;
//   final String imagePath;
//   const TravelCard(this.title, this.imagePath, {super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(16),
//         image: DecorationImage(
//           image: AssetImage(imagePath),
//           fit: BoxFit.cover,
//         ),
//       ),
//       child: Container(
//         alignment: Alignment.bottomLeft,
//         padding: const EdgeInsets.all(12),
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(16),
//           gradient: LinearGradient(
//             colors: [
//               Colors.black.withOpacity(0.6),
//               Colors.transparent,
//             ],
//             begin: Alignment.bottomCenter,
//             end: Alignment.topCenter,
//           ),
//         ),
//         child: Text(
//           title,
//           style: const TextStyle(
//             color: Colors.white,
//             fontSize: 16,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
//
// class TravelHomeScreen extends StatelessWidget {
//   const TravelHomeScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//
//       // 🔵 APP BAR (Same as picture)
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         elevation: 0,
//         title: const Text(
//           "Travel Buckets",
//           style: TextStyle(
//             color: Colors.black,
//             fontSize: 22,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         centerTitle: true,
//       ),
//
//       // 🔵 MAIN BODY GRID (Same as your picture)
//       body: Padding(
//         padding: const EdgeInsets.all(12.0),
//         child: GridView.builder(
//           gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: 2,
//             crossAxisSpacing: 12,
//             mainAxisSpacing: 12,
//             childAspectRatio: 0.75,
//           ),
//           itemCount: demoPlaces.length,
//           itemBuilder: (context, index) {
//             return TravelCard(
//               title: demoPlaces[index]["title"]!,
//               image: demoPlaces[index]["image"]!,
//             );
//           },
//         ),
//       ),
//
//       // 🔵 BOTTOM NAVIGATION (Same as picture)
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: 0,
//         selectedItemColor: Colors.blue,
//         unselectedItemColor: Colors.grey,
//         items: const [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: "Home",
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.explore),
//             label: "Explore",
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.person),
//             label: "Profile",
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// class TravelCard extends StatelessWidget {
//   final String title;
//   final String image;
//
//   const TravelCard({super.key, required this.title, required this.image});
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(14),
//         color: Colors.grey.shade200,
//         image: DecorationImage(
//           image: AssetImage(image),
//           fit: BoxFit.cover,
//         ),
//       ),
//       child: Container(
//         alignment: Alignment.bottomLeft,
//         padding: const EdgeInsets.all(10),
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(14),
//           gradient: LinearGradient(
//             colors: [
//               Colors.black.withOpacity(0.6),
//               Colors.transparent,
//             ],
//             begin: Alignment.bottomCenter,
//             end: Alignment.topCenter,
//           ),
//         ),
//         child: Text(
//           title,
//           style: const TextStyle(
//             color: Colors.white,
//             fontSize: 15,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// // DEMO DATA (Replace with your images)
// List<Map<String, String>> demoPlaces = [
//   {"title": "Beach", "image": "assets/beach.jpg"},
//   {"title": "Mountains", "image": "assets/m1.jpg"},
//   {"title": "Waterfall", "image": "assets/waterfall.jpg"},
//   {"title": "City Life", "image": "assets/city.jpg"},
//   {"title": "Resort", "image": "assets/resort.jpg"},
//   {"title": "Island", "image": "assets/island.jpg"},
// ];
