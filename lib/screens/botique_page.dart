import 'package:flutter/material.dart';

class BotiquePage extends StatefulWidget {
  const BotiquePage({super.key});

  @override
  State<BotiquePage> createState() => _BotiquePageState();
}

class _BotiquePageState extends State<BotiquePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all( Radius.circular(30)),
                ),
                child:Center(
                  child: Text('Page Boutique', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                )
              );
  }
}

