import 'package:flutter/material.dart';
import 'core/themes/colors.dart';
import 'futures/screens/botique_page.dart';
import 'futures/screens/food_page.dart';
import 'futures/screens/home_page.dart';
import 'futures/screens/livraison_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: '/',
      routes: {'/': (context) => const MyHomePage()},
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  late int _index = 0;
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
        backgroundColor: MyColors.primarycolors,
        foregroundColor: const Color.fromARGB(255, 252, 250, 250),
        actions: [
            IconButton(
              onPressed: (){},
              icon: const Icon(Icons.account_circle_outlined),
            )
        ],
      ),
      drawer: Drawer(),
       floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: MyColors.primarycolors,
        child: const Icon(Icons.message, color: Color.fromARGB(255, 252, 250, 250),),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        onTap: (currentIndex){
          setState(() {
            _index = currentIndex;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.delivery_dining_outlined), label: 'livraison'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_basket_outlined), label: 'boutique'),
          BottomNavigationBarItem(icon: Icon(Icons.fastfood_outlined), label: 'food'),
        ],
        backgroundColor: const Color.fromARGB(255, 241, 226, 217),
        selectedItemColor: MyColors.primarycolors,
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
        unselectedItemColor: const Color.fromARGB(255, 51, 22, 5),
        unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.normal, color: Color.fromARGB(255, 51, 22, 5)),
        showUnselectedLabels: true,
        elevation: 15,

      ),
      body: Container(
        color: MyColors.primarycolors,
        child: Column(
          children: [

            Expanded(
              child: _screens[_index]
            ),
            SizedBox(height: 10,)
          ],
        ),
      ),
    );
  }
}
