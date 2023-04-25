// Food

import 'package:_food_delivery_ui_practice/models/food.dart';
import 'package:_food_delivery_ui_practice/models/order.dart';
import 'package:_food_delivery_ui_practice/models/restaurant.dart';
import 'package:_food_delivery_ui_practice/models/user.dart';

final _burrito =
    Food(imageUrl: "assets/images/king3.jpg", name: "king biru", price: 8.99);

final _steak =
    Food(imageUrl: "assets/images/king 1.jpg", name: "King Hitam", price: 17.99);

final _pasta =
    Food(imageUrl: "assets/images/king4.jpg", name: "king 1999", price: 14.99);

final _ramen =
    Food(imageUrl: "assets/images/astrea1.jpg", name: "astrea 1998", price: 13.99);

final _pancakes =
    Food(imageUrl: "assets/images/astrea2.jpeg", name: "astrea 1999", price: 9.99);

final _burger =
    Food(imageUrl: "assets/images/king2.jpg", name: "King Biru", price: 14.99);

final _pizza =
    Food(imageUrl: "assets/images/astrea3.jpg", name: "astrea 2001", price: 11.99);

final _salmon = Food(
    imageUrl: "assets/images/astrea4.jpg", name: "astrea 2000", price: 12.99);

// Restaurants

final _restaurant0 = Restaurant(
    imageUrl: "assets/images/sorum1.jpg",
    name: "lancet sorum",
    address: "kelapa",
    rating: 5,
    menu: [
      _burrito,
      _steak,
      _pasta,
      _ramen,
      _pancakes,
      _burger,
      _pizza,
      _salmon
    ]);

final _restaurant1 = Restaurant(
    imageUrl: "assets/images/sorum5.jpg",
    name: "Andaaz Sorum",
    address: "Pangkal Pinang",
    rating: 4.1,
    menu: [_steak, _pasta, _ramen, _pancakes, _burger, _pizza]);

final _restaurant2 = Restaurant(
    imageUrl: "assets/images/sorum2.jpg",
    name: "Andi Sorum",
    address: "Muntok",
    rating: 5,
    menu: [_steak, _pasta, _pancakes, _burger, _pizza, _salmon]);

final _restaurant3 = Restaurant(
    imageUrl: "assets/images/sorum3.jpg",
    name: "Jamal Sorum",
    address: "Kelapa",
    rating: 4.3,
    menu: [_burger, _steak, _burger, _pizza, _salmon]);

final _restaurant4 = Restaurant(
    imageUrl: "assets/images/sorum4.jpg",
    name: "Asep Sorum",
    address: "Sungailiat",
    rating: 4.0,
    menu: [_burger, _ramen, _pancakes, _salmon]);

// Restaurants List

final List<Restaurant> restaurants = [
  _restaurant0,
  _restaurant1,
  _restaurant2,
  _restaurant3,
  _restaurant4
];

// User

final currentUser = User(name: "Zeeshan Ahmed", orders: [
  Order(
      restaurant: _restaurant2,
      food: _steak,
      date: "Apr 30, 2022",
      quantity: 1),
  Order(
      restaurant: _restaurant0,
      food: _ramen,
      date: "Apr 28, 2022",
      quantity: 3),
  Order(
      restaurant: _restaurant1,
      food: _burrito,
      date: "Apr 30, 2022",
      quantity: 2),
  Order(
      restaurant: _restaurant3,
      food: _salmon,
      date: "Apr 30, 2022",
      quantity: 1),
  Order(
      restaurant: _restaurant4,
      food: _pancakes,
      date: "Apr 30, 2022",
      quantity: 1)
], cart: [
  Order(
      restaurant: _restaurant2,
      food: _burger,
      date: "Apr 29, 2022",
      quantity: 2),
  Order(
      restaurant: _restaurant2,
      food: _pasta,
      date: "Apr 30, 2022",
      quantity: 1),
  Order(
      restaurant: _restaurant3,
      food: _salmon,
      date: "Apr 30, 2022",
      quantity: 1),
  Order(
      restaurant: _restaurant4,
      food: _pancakes,
      date: "Apr 29, 2022",
      quantity: 3),
  Order(
      restaurant: _restaurant1,
      food: _burrito,
      date: "Apr 30, 2022",
      quantity: 2)
]);
