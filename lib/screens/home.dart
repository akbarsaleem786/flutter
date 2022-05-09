import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final urlImages = [
    'assets/images/Banner_home.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 20,
        toolbarHeight: 60,
        backgroundColor: Color.fromARGB(255, 6, 0, 36),
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 7),
          child: Icon(
            Icons.location_on_sharp,
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "Locations",
                  style: TextStyle(fontSize: 15),
                ),
                Icon(Icons.keyboard_arrow_down),
              ],
            ),
            Text("530016", style: TextStyle(fontSize: 13)),
          ],
        ),
        actions: [
          CircleAvatar(
            radius: 25,
            backgroundColor: Color.fromARGB(83, 10, 18, 87),
            child: const Icon(
              Icons.search,
              size: 25,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: CircleAvatar(
              radius: 25,
              backgroundColor: Color.fromARGB(83, 10, 18, 87),
              child: const Icon(
                Icons.notifications,
                size: 25,
              ),
            ),
          ),
        ],
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.transparent),
                child: Stack(
                  children: [
                    Container(
                      height: 80,
                      decoration:
                          BoxDecoration(color: Color.fromARGB(255, 6, 0, 36)),
                    ),
                    Center(
                        child: CarouselSlider.builder(
                            itemCount: urlImages.length,
                            itemBuilder: (context, index, realIndex) {
                              final urlImage = urlImages[index];
                              return buildImage(urlImage, index);
                            },
                            options: CarouselOptions(
                                height: 150,
                                aspectRatio: 4,
                                viewportFraction: 1.5,
                                autoPlay: true))),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Groceries Categories",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text("See All",
                        style: TextStyle(fontWeight: FontWeight.bold))
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                height: 500,
                child: GridView(
                    children: [
                      Container(
                        child: Image(
                            image: AssetImage("assets/images/groceries.png")),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      Container(
                        child:
                            Image(image: AssetImage("assets/images/milk.png")),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      Container(
                        child: Image(
                            image: AssetImage("assets/images/Meat_fish.png")),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      Container(
                        // child: Align(
                        //   alignment: Alignment.bottomCenter,
                        //   child: Text(
                        //     "Fruits & Vegitables",
                        //     style: TextStyle(fontSize: 23),
                        //     textAlign: TextAlign.center,
                        //   ),
                        // ),
                        child: Image(
                            image: AssetImage("assets/images/fruits.png")),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image: AssetImage("assets/images/fruits.png"))),
                      ),
                    ],
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 15,
                        crossAxisSpacing: 0)),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.card_travel),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        elevation: 5,
        shape: CircularNotchedRectangle(),
        child: Container(
          height: 60,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 1),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Icon(
                      Icons.home_filled,
                      size: 30,
                    ),
                    Text(
                      "Home",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.menu,
                      size: 30,
                    ),
                    Text("catagories",
                        style: TextStyle(fontWeight: FontWeight.w500))
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  children: [
                    Icon(
                      Icons.menu_book,
                      size: 30,
                    ),
                    Text("My Orders",
                        style: TextStyle(fontWeight: FontWeight.w500))
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.person,
                      size: 30,
                    ),
                    Text("My Profile",
                        style: TextStyle(fontWeight: FontWeight.w500))
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildImage(String urlImage, int index) => Container(
        margin: EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration(
            color: Colors.red, borderRadius: BorderRadius.circular(30)),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Image.asset(
            urlImage,
            fit: BoxFit.cover,
          ),
        ),
      );
}
