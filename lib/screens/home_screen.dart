import 'package:_food_delivery_ui_practice/data/data.dart';
import 'package:_food_delivery_ui_practice/models/restaurant.dart';
import 'package:_food_delivery_ui_practice/screens/cart_screen.dart';
import 'package:_food_delivery_ui_practice/screens/restaurant_screen.dart';
import 'package:_food_delivery_ui_practice/screens/startedpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../pages/products.dart';
import '../widgets/recent_order.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Hello, selamat datang'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.green),
              accountName: Text('yuda'),
              accountEmail: Text('yudagimal.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('0'),
              ),
            ),
            ListTile(
              title: Text('Logout'),
              leading: Icon(Icons.login_rounded),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => homepage()));
              },
            ),
            ListTile(
              title: Text('produk'),
              leading: Icon(Icons.search),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProductPage()));
              },
            ),
            ListTile(
              title: Text('help'),
              leading: Icon(Icons.help),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  contentPadding: const EdgeInsets.symmetric(vertical: 10),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(width: 0.8)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(
                          width: 0.8, color: Colors.deepOrangeAccent)),
                  hintText: "Cari Kendaraan atau sorum",
                  prefixIcon: const Icon(Icons.search),
                  suffixIcon: IconButton(
                      onPressed: () {}, icon: const Icon(Icons.clear))),
            ),
          ),
          const RecentOrders(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Sorum Terdekat",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.2),
                ),
              ),
              _buildRestaurants()
            ],
          )
        ],
      ),
    );
  }

  _buildRestaurants() {
    final List<Widget> restaurantList = [];
    restaurants.forEach((Restaurant restaurant) {
      restaurantList.add(GestureDetector(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => RestaurantScreen(restaurant: restaurant),
          ),
        ),
        child: Container(
          margin: const EdgeInsets.all(12),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(width: 1.0, color: Colors.grey.shade200)),
          child: Expanded(
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Hero(
                    tag: restaurant.imageUrl,
                    child: Image(
                      width: 150,
                      height: 150,
                      image: AssetImage(restaurant.imageUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.all(12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          restaurant.name,
                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                          overflow: TextOverflow.ellipsis,
                        ),
                        RatingBar.builder(
                            initialRating: 5,
                            itemCount: restaurant.rating.toInt(),
                            allowHalfRating: true,
                            minRating: 1,
                            unratedColor: Colors.grey,
                            itemSize: 20,
                            direction: Axis.horizontal,
                            itemBuilder: (context, _) =>
                                (const Icon(Icons.star, color: Colors.amber)),
                            onRatingUpdate: (rating) {
                              Text(restaurant.rating.toString());
                            }),
                        Text(
                          restaurant.address,
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600),
                          overflow: TextOverflow.ellipsis,
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ));
    });
    return Column(
      children: restaurantList,
    );
  }
}
