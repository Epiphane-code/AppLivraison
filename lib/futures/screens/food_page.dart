import 'package:flutter/material.dart';
import 'package:app_express/core/widgets/food_card.dart';
import 'package:app_express/models/foods.dart';

class FoodPage extends StatefulWidget {
  const FoodPage({super.key});

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 240, 221, 221),
                  borderRadius: BorderRadius.all( Radius.circular(30)),
                ),
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column( children: [
          foodCard(Food(name: 'Pizza', description: 'Delicious pizza with cheese and toppings', price: 9.99, imageUrl: 'https://images.pexels.com/photos/5112594/pexels-photo-5112594.jpeg', horaireDisponibilite: '10:00 - 22:00')),
          foodCard(Food(name: 'Burger', description: 'Juicy burger with lettuce and tomato', price: 7.99, imageUrl: 'https://images.pexels.com/photos/5112594/pexels-photo-5112594.jpeg', horaireDisponibilite: '11:00 - 23:00')),
          foodCard(Food(name: 'Sushi', description: 'Fresh sushi rolls with fish and rice', price: 12.99, imageUrl: 'https://images.pexels.com/photos/5112594/pexels-photo-5112594.jpeg', horaireDisponibilite: '12:00 - 21:00')),
          foodCard(Food(name: 'Pasta', description: 'Creamy pasta with sauce and vegetables', price: 8.99, imageUrl: 'https://images.pexels.com/photos/5112594/pexels-photo-5112594.jpeg', horaireDisponibilite: '10:00 - 20:00')),
        ],),
      ),
    );
  }
}