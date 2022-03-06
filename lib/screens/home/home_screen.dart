import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_chat/screens/auth/auth_controller.dart';
import 'package:get_chat/screens/chat/main_chat.dart';
import 'package:get_chat/screens/settings/settings.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color.fromARGB(255, 48, 207, 208),
              Color.fromARGB(255, 51, 8, 103),
            ],
          ),
        ),
        child: Align(
          alignment: Alignment.topCenter,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              //TITLE
              const Padding(
                padding: EdgeInsets.only(top: 130.0),
                child: Text(
                  'GetX Chat',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 50,
                  ),
                ),
              ),
              // CHAT SCREEN BUTTON
              InkWell(
                onTap: () {
                  Get.to(const MainChat());
                },
                child: Container(
                  margin: const EdgeInsets.only(top: 200),
                  height: 80,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.blueGrey[600],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Text(
                          "Go Chat",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 25,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Icon(
                          Icons.people,
                          color: Colors.white70,
                          size: 32,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: SizedBox(
        height: 40,
        width: 40,
        child: FittedBox(
          child: FloatingActionButton(
            backgroundColor: Colors.grey,
            elevation: 0,
            child: const Icon(
              Icons.settings,
              color: Colors.black,
            ),
            onPressed: () {
              Get.to(() => const Settings());
            },
          ),
        ),
      ),
    );
  }
}
