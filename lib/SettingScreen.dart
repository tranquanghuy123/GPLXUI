import 'package:flutter/material.dart';

import 'HomeScreen.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    double widthScreen = MediaQuery.of(context).size.width;
    double heightScreen = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Setting",
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24)),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.notifications, size: 30),
            onPressed: () {},
          ),
        ],
        backgroundColor: Colors.yellow[600],
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, size: 35),
          onPressed: () {
            Navigator.pop(
                context,
                MaterialPageRoute(
                    builder: (context) => const HomeScreen()));

          },
        ),
      ),
      body: Container(
        width: widthScreen,
        height: heightScreen,
        padding: EdgeInsets.all(10),
        child: Column(
          children: [

            SizedBox(height: 35),

            Container(
              width: widthScreen,
                height: 180,
              decoration: const BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
                child: const Column(
                  children: [
                    ListTile(
                      dense: true,
                      leading: Icon(Icons.near_me,
                          color: Colors.black, size: 30),
                      trailing: Icon(Icons.keyboard_arrow_right,
                          color: Colors.black, size: 30),
                      title: Text("Chia sẻ",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                              fontWeight: FontWeight.w500)),
                    ),

                    Divider(color: Colors.black54),

                    ListTile(
                      dense: true,
                      leading: Icon(Icons.chat,
                          color: Colors.black, size: 30),
                      trailing: Icon(Icons.keyboard_arrow_right,
                          color: Colors.black, size: 30),
                      title: Text("Báo lỗi, góp ý",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                              fontWeight: FontWeight.w500)),
                    ),
                    Divider(color: Colors.black54),

                    ListTile(
                      dense: true,
                      leading: Icon(Icons.email,
                          color: Colors.black, size: 30),
                      trailing: Icon(Icons.keyboard_arrow_right,
                          color: Colors.black, size: 30),
                      title: Text("Liên hệ hỗ trợ",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                              fontWeight: FontWeight.w500)),
                    ),
                  ],
                ),
            ),

            SizedBox(height: 35),


            Container(
              width: widthScreen,
              height: 112,
              decoration: const BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
              child: const Column(
                children: [
                  ListTile(
                    dense: true,
                    leading: Icon(Icons.library_books_rounded,
                        color: Colors.black, size: 30),
                    trailing: Icon(Icons.keyboard_arrow_right,
                        color: Colors.black, size: 30),
                    title: Text("Điền khoản sử dụng",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.w500)),
                  ),

                  Divider(color: Colors.black54),

                  ListTile(
                    dense: true,
                    leading: Icon(Icons.https,
                        color: Colors.black, size: 30),
                    trailing: Icon(Icons.keyboard_arrow_right,
                        color: Colors.black, size: 30),
                    title: Text("Chính sách quyền riêng tư",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.w500)),
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
