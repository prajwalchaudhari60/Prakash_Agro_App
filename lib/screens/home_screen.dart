import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: currentIndex == 0
          ? homePage()
          : currentIndex == 1
              ? productsPage()
              : contactPage(),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },

        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,

        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: "Products",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.phone),
            label: "Contact",
          ),
        ],
      ),
    );
  }

  // ✅ HOME PAGE UI
  Widget homePage() {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            /// HEADER IMAGE
            Stack(
              children: [
                Image.asset(
                  "assets/banner.jpg",
                  width: double.infinity,
                  height: 200,
                  fit: BoxFit.cover,
                ),

                Positioned(
                  top: 10,
                  left: 10,
                  child: Icon(Icons.menu, color: Colors.white, size: 30),
                ),

                Positioned(
                  bottom: 20,
                  left: 20,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Welcome Guest",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Good evening!",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                )
              ],
            ),

            SizedBox(height: 15),

            /// PRODUCTS TITLE
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Products",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "See all",
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
              ),
            ),

            SizedBox(height: 10),

            /// PRODUCT GRID
            Padding(
              padding: EdgeInsets.all(10),
              child: GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: products.length,

                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 0.9,
                ),

                itemBuilder: (context, index) {

                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.grey.shade100,
                    ),

                    child: Column(
                      children: [

                        ClipRRect(
                          borderRadius: BorderRadius.vertical(
                              top: Radius.circular(15)),
                          child: Image.asset(
                            products[index]['image']!,
                            height: 120,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),

                        SizedBox(height: 10),

                        Text(
                          products[index]['name']!,
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  // ✅ PRODUCTS PAGE
  Widget productsPage() {
    return Center(child: Text("Products Page"));
  }

  // ✅ CONTACT PAGE
  Widget contactPage() {
    return Center(
      child: Text(
        "Contact Us\n\nPhone: 9876543210\nEmail: example@gmail.com",
        textAlign: TextAlign.center,
      ),
    );
  }

  // ✅ PRODUCT DATA
  final List<Map<String, String>> products = [
    {"name": "Drip Irrigation", "image": "assets/drip.png"},
    {"name": "Mini Sprinklers", "image": "assets/sprinkler.png"},
    {"name": "Dosing Pump", "image": "assets/pump.png"},
    {"name": "PVC Pipes", "image": "assets/pvc.png"},
    {"name": "HDPE Pipes", "image": "assets/hdpe.png"},
    {"name": "Plumbing", "image": "assets/plumbing.png"},
  ];
}