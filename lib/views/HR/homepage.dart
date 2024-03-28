import 'package:flutter/material.dart';
import './Summary.dart';

class HrHomepage extends StatefulWidget{
  const HrHomepage({super.key});
  
  @override
  State<HrHomepage> createState() => _HrHomepage();
  
}

class _HrHomepage extends State<HrHomepage> {
    int indextBottomNav = 0;
    List WidgetOption = [
      Summary(),
    ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(83, 151, 193, 1),
        title: const Text("Test"),
      ),
      body: Center(
        child: WidgetOption[indextBottomNav],
      ),

      bottomNavigationBar: BottomNavigationBar(
      backgroundColor: const Color.fromARGB(255, 247, 197, 186),
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Summary'),
      ],
      currentIndex: indextBottomNav,
      onTap: ((value) => ((){
        indextBottomNav = value;
      })),
      )
    );
  }
}