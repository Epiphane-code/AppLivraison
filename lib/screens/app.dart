import 'package:app_express/screens/botique_page.dart';
import 'package:app_express/screens/food_page.dart';
import 'package:app_express/screens/home_page.dart';
import 'package:app_express/screens/livraison_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  late int index = 0;
    final List<Widget> _screens = [
      const HomePage(),
      const LivraisonPage(),
      const BotiquePage(),
      const FoodPage(),
    ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Allo Express Niger'),
        centerTitle: true,
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        foregroundColor: Theme.of(context).appBarTheme.foregroundColor,
        actions: [
            IconButton(
              onPressed: (){
                setState(() {
                });
              },
              icon: const Icon(Icons.palette_outlined),
            )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
              ),
              child: Container(
                width: 200,
                height: 100,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Image.asset( 'assets/images/logo.png', height: 100, fit: BoxFit.cover,)
                ),
            ),
            GestureDetector(
              onTap: () => Navigator.pop(context),
              child: ListTile(
                leading: Icon(Icons.person_outline),
                title: Text('Profile'),
                trailing: Icon(Icons.chevron_right),
              ),
            ),
             GestureDetector(
              child: ListTile(
                leading: Icon(Icons.delivery_dining_outlined),
                title: Text('Commandes en cours'),
                trailing: Icon(Icons.chevron_right),
              ),
            ),
            GestureDetector(
              child: ListTile(
                leading: Icon(Icons.history_outlined),
                title: Text('Historique de livraison'),
                trailing: Icon(Icons.chevron_right),
              ),
            ),
            GestureDetector(
              child: ListTile(
                leading: Icon(Icons.work_outline),
                title: Text('Partenariat'),
                trailing: Icon(Icons.chevron_right),
              ),
            ),

             GestureDetector(
              child: ListTile(
                leading: Icon(Icons.help_outline),
                title: Text('Aide et support'),
                trailing: Icon(Icons.chevron_right),
              ),
            ),

             GestureDetector(
              child: ListTile(
                leading: Icon(Icons.settings_outlined),
                title: Text('Parametres'),
                trailing: Icon(Icons.chevron_right),
              ),
            ),

             GestureDetector(
              child: ListTile(
                leading: Icon(Icons.logout_outlined),
                title: Text('Déconnexion', style: TextStyle(color: Colors.red),),
                trailing: Icon(Icons.chevron_right),
              ),
            ),
          ],
        ),
      ),
       floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        child: const Icon(Icons.message, color: Color.fromARGB(255, 252, 250, 250),),
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: index,
        animationDuration: Duration(seconds: 1),
        onDestinationSelected: (selectedIndex){
          setState(() {
            index = selectedIndex;
          });
        },
        elevation: 15, destinations: [
          NavigationDestination(icon: Icon(Icons.home_outlined), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.delivery_dining_outlined), label: 'livraison'),
          NavigationDestination(icon: Icon(Icons.shopping_basket_outlined), label: 'boutique'),
          NavigationDestination(icon: Icon(Icons.fastfood_outlined), label: 'food'),
        ],

      ),
      body: Container(
        color: Theme.of(context).appBarTheme.backgroundColor,
        
        child: Column(
        
          children: [

            Expanded(
              child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).navigationBarTheme.backgroundColor,
                    borderRadius: BorderRadius.all( Radius.circular(20)),
                  ),
                  child: _screens[index]
                ),
              ),
            SizedBox(height: 10,)
          ],
        ),
      ),
    );
  }
}