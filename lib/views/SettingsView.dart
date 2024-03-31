import 'package:flutter/material.dart';
import 'package:hr/views/components/IconPicture.dart';
import 'package:hr/views/components/RowTextField.dart';

// Overflow keyboard //

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    TextEditingController emailController = TextEditingController();
    TextEditingController usernameController = TextEditingController();
    TextEditingController nameController = TextEditingController();
    TextEditingController phoneNoController = TextEditingController();

    return Scaffold(
        backgroundColor: Color.fromARGB(255, 247, 197, 186),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                      onPressed: () => {Navigator.pop(context)},
                      icon: Icon(Icons.arrow_back_ios))
                ],
              ),
              const Text(
                "Settings",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                  padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                  child: Container(
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(20),
                          color: const Color.fromARGB(255, 240, 240, 240),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.7),
                                spreadRadius: 4,
                                blurRadius: 5,
                                offset: const Offset(0, 1.75))
                          ]),
                      height: 0.7 * screenHeight,
                      child: Column(
                        children: [
                          IconPicture(200, 'assets/images/bigprk.png', "S"),
                          const SizedBox(
                            height: 40,
                          ),
                          RowTextField(16, "K2D", FontWeight.bold, "E-Mail",
                              "E-Mail", emailController),
                          const SizedBox(
                            height: 20,
                          ),
                          RowTextField(16, "K2D", FontWeight.bold, "Phone no.",
                              "Phone no.", phoneNoController),
                          const SizedBox(
                            height: 20,
                          ),
                        ],
                      )))
            ],
          ),
        ));
  }
}
