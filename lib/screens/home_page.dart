import 'package:flutter/material.dart';

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
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      child: Center(
        child: SingleChildScrollView(
        padding: const EdgeInsets.all(24),

          child: Column(
            children: [
                  Card(
                    child: Container(
                      constraints: BoxConstraints(maxWidth: 700),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: Column(
                        children: [
                          Container(
                            color: Colors.white,
                            child: Container(
                              padding: EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                color: Theme.of(context).appBarTheme.backgroundColor!.withOpacity(0.2),
                                borderRadius: BorderRadius.all(Radius.circular(3)),
                              ),
                              child: Icon(
                                Icons.delivery_dining_outlined,
                                size: 30,
                                  color:  Theme.of(context).appBarTheme.backgroundColor,
                              ),
                            ),
                          ),
                          Text(
                            'Livreur',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 5),
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
                                color:  Theme.of(context).appBarTheme.backgroundColor!,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  'Demander une livraison',
                                  textAlign: TextAlign.center, style: TextStyle(
                                    color: Colors.white,
                                  ),
                    
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                   SizedBox(height: 10),
                  Divider(color: Theme.of(context).appBarTheme.backgroundColor, thickness: 1,),
                  SizedBox(height: 10),

                  Card(
                    child: Container(
                      constraints: BoxConstraints(maxWidth: 700),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: Column(
                        children: [
                          Container(
                            color: Colors.white,
                            child: Container(
                              padding: EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                color:  Theme.of(context).appBarTheme.backgroundColor!.withOpacity(0.2),
                                borderRadius: BorderRadius.all(Radius.circular(3)),
                              ),
                              child: Icon(
                                Icons.restaurant_menu_outlined,
                                size: 30,
                                color:  Theme.of(context).appBarTheme.backgroundColor,
                              ),
                            ),
                          ),
                          Text(
                            'Food',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 5),
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
                                color:  Theme.of(context).appBarTheme.backgroundColor!,
                                
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  'Demander une livraison',
                                  textAlign: TextAlign.center, style: TextStyle(
                                    color: Colors.white,
                                  ),
                    
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(height: 10),
                  Divider(color: Theme.of(context).appBarTheme.backgroundColor, thickness: 1,),
                  SizedBox(height: 10),

                  Card(
                    child: Container(
                      constraints: BoxConstraints(maxWidth: 700),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: Column(
                        children: [
                          Container(
                            color: Colors.white,
                            child: Container(
                              padding: EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                color: Theme.of(context).appBarTheme.backgroundColor!.withOpacity(0.2),
                                borderRadius: BorderRadius.all(Radius.circular(3)),
                              ),
                              child: Icon(
                                Icons.delivery_dining_outlined,
                                size: 30,
                                color:  Theme.of(context).appBarTheme.backgroundColor,
                              ),
                            ),
                          ),
                          Text(
                            'Livreur',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 5),
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
                                color:  Theme.of(context).appBarTheme.backgroundColor,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  'Demander une livraison',
                                  textAlign: TextAlign.center, style: TextStyle(
                                    color: Colors.white,
                                  ),
                    
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                ],
              ),
        ),
      ),
    );
  }
}
