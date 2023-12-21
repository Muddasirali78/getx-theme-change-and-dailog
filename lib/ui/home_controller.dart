import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("getx "),
        ),
        body: Column(
          children: [
            Card(
              child: ListTile(
                  title: Text("getx is very"),
                  subtitle: Text("getx zindabad"),
                  onTap: () {
                    Get.defaultDialog(title: "text", middleText: "getx ");
                  }),
            ),
            Card(
              child: ListTile(
                title: Text("data"),
                onTap: () {
                  Get.bottomSheet(
                    Container(
                      child: Column(
                        children: [
                          ListTile(
                            leading: Icon(Icons.light_mode),
                            title: Text("light mode"),
                            onTap: () {
                              Get.changeTheme(ThemeData.light());
                            },
                          ),
                          ListTile(
                            leading: Icon(Icons.dark_mode),
                            title: Text("dark mode"),
                            onTap: () {
                              Get.changeTheme(ThemeData.dark());
                            },
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ));
  }
}
