import 'package:ecommerce_with_adminpanel/pages/details.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  bool icecream = false, salad = false, burger = false, pizza = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 50.0, left: 20.0, right: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Hello Azzam",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                  Container(
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(
                      Icons.shopping_cart_outlined,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30.0),
              RichText(
                textAlign: TextAlign.left,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Delicious Food\n",
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    TextSpan(
                      text: "Discover and Get Food",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black38,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildSelectableMaterialImage('assets/burger.png', burger, () {
                    setState(() {
                      burger = !burger;
                      pizza = false;
                      icecream = false;
                      salad = false;
                    });
                  }),
                  buildSelectableMaterialImage('assets/pizza.png', pizza, () {
                    setState(() {
                      pizza = !pizza;
                      burger = false;
                      icecream = false;
                      salad = false;
                    });
                  }),
                  buildSelectableMaterialImage('assets/ice-cream.png', icecream,
                      () {
                    setState(() {
                      icecream = !icecream;
                      burger = false;
                      pizza = false;
                      salad = false;
                    });
                  }),
                  buildSelectableMaterialImage('assets/salad.png', salad, () {
                    setState(() {
                      salad = !salad;
                      burger = false;
                      pizza = false;
                      icecream = false;
                    });
                  }),
                ],
              ),
              SizedBox(height: 20.0),
              // Horizontal Card Section with onTap functionality
              Container(
                height: 200, // Increased height of the container
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    buildFoodCard('assets/salad2.png', 'Russian Salad', '250', () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Details(
                            itemName: 'Russian',
                            price: '250',
                            imagePath: 'assets/salad2.png',
                          ),
                        ),
                      );
                    }),
                    buildFoodCard('assets/food.png', 'Pizza', 'RS:1500', () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Details(
                            itemName: 'Platter',
                            price: '1500',
                            imagePath: 'assets/food.png',
                          ),
                        ),
                      );
                    }),
                    buildFoodCard('assets/beefbiryani.png', 'Biryani', 'RS:400',
                        () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Details(
                            itemName: 'Biryani',
                            price: '8',
                            imagePath: 'assets/beefbiryani.png',
                          ),
                        ),
                      );
                    }),
                  ],
                ),
              ),
              SizedBox(height: 20.0),
              // Vertical Tile-Like Interface with BorderRadius.circular
              ListView(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  buildFoodTile('assets/salad2.png', 'Healthy Salad', 'Rs:200', () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Details(
                          itemName: 'Healthy Salad',
                          price: '200',
                          imagePath: 'assets/salad2.png',
                        ),
                      ),
                    );
                  }),
                  buildFoodTile('assets/food.png', 'Italian Salad', 'Rs:350', () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Details(
                          itemName: 'Italian Food',
                          price: '9',
                          imagePath: 'assets/food.png',
                        ),
                      ),
                    );
                  }),
                  buildFoodTile('assets/pasta.png', 'Alfredo Pasta', 'RS:400', () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Details(
                          itemName: 'Alfredo Pasta',
                          price: '5',
                          imagePath: 'assets/pasta.png',
                        ),
                      ),
                    );
                  }),
                  buildFoodTile(
                      'assets/beefbiryani.png', 'Beef Biryani', 'Rs:500', () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Details(
                          itemName: 'Beef Biryani',
                          price: '500',
                          imagePath: 'assets/beefbiryani.png',
                        ),
                      ),
                    );
                  }),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildSelectableMaterialImage(
      String assetPath, bool isSelected, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Material(
        elevation: isSelected ? 10.0 : 5.0,
        borderRadius: BorderRadius.circular(10.0),
        color: isSelected ? Colors.yellow[700] : Colors.white,
        child: Container(
          padding: EdgeInsets.all(8.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image.asset(
              assetPath,
              height: 50,
              width: 50,
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }

  Widget buildFoodCard(
      String assetPath, String description, String price, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: 180,
        child: Card(
          margin: EdgeInsets.all(10.0),
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  assetPath,
                  height: 100,
                  width: double.infinity,
                  fit: BoxFit.contain,
                ),
                SizedBox(height: 10.0),
                Text(
                  description,
                  style: TextStyle(
                    color: Colors.grey[800],
                    fontSize: 16.0,
                  ),
                ),
                Text(
                  price,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildFoodTile(
      String assetPath, String description, String price, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          border: Border.all(
            color: Colors.grey.shade300,
            width: 1.0,
          ),
        ),
        child: ListTile(
          leading: Image.asset(
            assetPath,
            height: 60,
            width: 60,
            fit: BoxFit.contain,
          ),
          title: Text(
            description,
            style: TextStyle(
              color: Colors.grey[800],
              fontSize: 16.0,
            ),
          ),
          subtitle: Text(
            price,
            style: TextStyle(
              color: Colors.black,
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
