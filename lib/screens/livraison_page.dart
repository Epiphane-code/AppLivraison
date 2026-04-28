import 'package:flutter/material.dart';

class LivraisonPage extends StatefulWidget {
  const LivraisonPage({super.key});

  @override
  State<LivraisonPage> createState() => _LivraisonPageState();
}

class _LivraisonPageState extends State<LivraisonPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all( Radius.circular(30)),
                ),
                child:Center(
                  child: Text('Page Livraison', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                )
              );
  }
}