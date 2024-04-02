import 'package:flutter/material.dart';

class HistoryView extends StatefulWidget {
  const HistoryView({super.key});

  @override
  State<HistoryView> createState() => _HistoryViewState();
}

class _HistoryViewState extends State<HistoryView> {
  String topic = "History";

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            topic,
            style: const TextStyle(
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 20),
          Padding(padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
          child: Container(
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(20),
              color: const Color.fromARGB(255, 240, 240, 240),  
              boxShadow: [
                BoxShadow(color: Colors.grey.withOpacity(0.7),
                spreadRadius: 4,
                blurRadius: 5,
                offset: const Offset(0,1.75))
              ]
            ),
          
            height: 0.7 * screenHeight,
            child: Container(
              width: 500,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  
                ],
              ),
            ),
          )
          )
        ],
      );
  }
}