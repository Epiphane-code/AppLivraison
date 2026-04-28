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
        padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 16),

      decoration: BoxDecoration(
                  borderRadius: BorderRadius.all( Radius.circular(30)),
                ),
      child: SingleChildScrollView(
        child: Column( children: [
          foodCard(Food(name: 'Pizza', description: 'Delicious pizza with cheese and toppings', price: 9.99, imageUrl: 'https://images.pexels.com/photos/5112594/pexels-photo-5112594.jpeg', horaireDisponibilite: '10:00 - 22:00', restaurant: 'Amandine')),
          foodCard(Food(name: 'Burger', description: 'Juicy burger with lettuce and tomato', price: 7.99, imageUrl: 'https://images.pexels.com/photos/5112594/pexels-photo-5112594.jpeg', horaireDisponibilite: '11:00 - 23:00', restaurant: 'Rawda')),
          foodCard(Food(name: 'Sushi', description: 'Fresh sushi rolls with fish and rice', price: 12.99, imageUrl: 'https://images.pexels.com/photos/5112594/pexels-photo-5112594.jpeg', horaireDisponibilite: '12:00 - 21:00', restaurant: 'La Legende')),
          foodCard(Food(name: 'Pasta', description: 'Creamy pasta with sauce and vegetables', price: 8.99, imageUrl: 'https://images.pexels.com/photos/5112594/pexels-photo-5112594.jpeg', horaireDisponibilite: '10:00 - 20:00', restaurant: '3EPICES')),
        ],),
      ),
    );
  }
}