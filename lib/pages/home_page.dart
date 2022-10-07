import 'package:e_commerce/utils/my_products.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce/utils/my_button.dart';
import 'package:e_commerce/utils/my_images.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  final controller = PageController();

  @override
  Widget build(BuildContext context) {
    var safeArea = SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search_outlined,
              size: 32,
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
    return Scaffold(
      backgroundColor: Colors.black,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.black,
        child:
            Icon(Icons.local_offer_outlined, size: 35, color: Colors.blueGrey),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.home_outlined,
                size: 32,
                color: Colors.blueGrey,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.favorite_outline,
                size: 32,
                color: Colors.blueGrey,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.shopping_basket_outlined,
                size: 32,
                color: Colors.blueGrey,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.person,
                size: 32,
                color: Colors.blueGrey,
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.search_outlined,
                          size: 32,
                          color: Colors.blueGrey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 150,
              width: 350,
              //padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MyButton(
                    iconImagePath: 'assets/man.png',
                    buttonText: 'Man',
                    color: Colors.blueGrey,
                  ),
                  MyButton(
                    iconImagePath: 'assets/baby.png',
                    buttonText: 'Kids/Baby',
                    color: Colors.blueGrey,
                  ),
                  MyButton(
                    iconImagePath: 'assets/woman.png',
                    buttonText: 'Woman',
                    color: Colors.blueGrey,
                  ),
                ],
              ),
            ),
            Container(
              height: 200,
              child: PageView(
                scrollDirection: Axis.horizontal,
                controller: controller,
                children: [
                  Image.asset(
                    "assets/man1.png",
                    width: 300,
                    height: 450,
                  ),
                  Image.asset(
                    "assets/kids.png",
                    width: 300,
                    height: 450,
                  ),
                  Image.asset(
                    "assets/woman1.png",
                    width: 300,
                    height: 450,
                  ),
                  //MyImages(
                  //  iconImagePath: 'assets/man1.png',
                  //  color: Colors.blue,
                  //),
                  //MyImages(
                  //  iconImagePath: 'assets/kids.png',
                  //  color: Colors.red[200],
                  //),
                  //MyImages(
                  //  iconImagePath: 'assets/woman1.png',
                  //  color: Colors.pink,
                  //),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MyProducts(
                    iconImagePath: 'assets/fashion.png',
                    buttonText: 'Clothes',
                    color: Colors.lightBlue,
                  ),
                  MyProducts(
                    iconImagePath: 'assets/food.png',
                    buttonText: 'Food',
                    color: Colors.green,
                  ),
                  MyProducts(
                    iconImagePath: 'assets/goods.png',
                    buttonText: 'Goods',
                    color: Colors.brown,
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MyProducts(
                    iconImagePath: 'assets/personal.png',
                    buttonText: 'Personal',
                    color: Colors.yellow,
                  ),
                  MyProducts(
                    iconImagePath: 'assets/phone.png',
                    buttonText: 'Phone',
                    color: Colors.grey,
                  ),
                  MyProducts(
                    iconImagePath: 'assets/television.png',
                    buttonText: 'TV',
                    color: Colors.orange,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
