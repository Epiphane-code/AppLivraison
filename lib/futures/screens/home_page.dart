import 'package:flutter/material.dart';
import 'package:app_express/core/themes/colors.dart';
import 'package:app_express/models/foods.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 240, 221, 221),
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      child: Center(
        child: SingleChildScrollView(
        padding: const EdgeInsets.all(24),

          child: Column(
            children: [
              SizedBox(height: 5),

              Text(
                "Actions Rapides",
                textAlign: TextAlign.center,

                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 51, 22, 5),
                ),
              ),

              SizedBox(height: 5),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(height: 15),

                  Container(
                    constraints: BoxConstraints(maxWidth: 700),
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(50, 8, 78, 2),
                            borderRadius: BorderRadius.all(Radius.circular(3)),
                          ),
                          child: Icon(
                            Icons.delivery_dining_outlined,
                            size: 40,
                            color: const Color.fromARGB(255, 8, 78, 2),
                          ),
                        ),
                        Text(
                          'Livreur',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 5),
                        Center(
                          child: Text(
                            'Commander à Manger, vous etes proches de vos restaurants préférés',
                            textAlign: TextAlign.center,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(150, 0, 0, 0),
                            ),
                          ),
                        ),
                        SizedBox(height: 15),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            constraints: BoxConstraints(
                              maxWidth: 500,
                              minWidth: 200,
                            ),
                            width: double.infinity,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 8, 78, 2),
                              borderRadius: BorderRadius.all(
                                Radius.circular(5),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                'Demander une livraison',
                                textAlign: TextAlign.center,

                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 15),

                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      constraints: BoxConstraints(maxWidth: 700),
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              color: Colors.orange.shade50,
                              borderRadius: BorderRadius.all(
                                Radius.circular(3),
                              ),
                            ),
                            child: Icon(
                              Icons.food_bank_outlined,
                              size: 40,
                              color: MyColors.primarycolors,
                            ),
                          ),
                          Text(
                            'Food',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 5),

                          Center(
                            child: Text(
                              'Commander à Manger, vous etes proches de vos restaurants préférés',
                              textAlign: TextAlign.center,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,

                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(150, 0, 0, 0),
                              ),
                            ),
                          ),
                          SizedBox(height: 15),
                          Container(
                            constraints: BoxConstraints(
                              maxWidth: 500,
                              minWidth: 200,
                            ),
                            width: double.infinity,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: MyColors.primarycolors,
                              borderRadius: BorderRadius.all(
                                Radius.circular(5),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                'Consulter le menu',
                                textAlign: TextAlign.center,

                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(height: 15),

                  Container(
                    constraints: BoxConstraints(maxWidth: 700),
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(50, 1, 37, 241),
                            borderRadius: BorderRadius.all(Radius.circular(3)),
                          ),
                          child: Icon(
                            Icons.shopping_bag_outlined,
                            size: 40,
                            color: const Color.fromARGB(255, 1, 37, 241),
                          ),
                        ),
                        Text(
                          'Shopping',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 5),

                        Center(
                          child: Text(
                            'Commander à Manger, vous etes proches de vos restaurants préférés',
                            textAlign: TextAlign.center,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,

                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(150, 0, 0, 0),
                            ),
                          ),
                        ),
                        SizedBox(height: 15),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            constraints: BoxConstraints(
                              maxWidth: 500,
                              minWidth: 200,
                            ),
                            width: double.infinity,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 1, 37, 241),
                              borderRadius: BorderRadius.all(
                                Radius.circular(5),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                'Voir plus',
                                textAlign: TextAlign.center,

                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
