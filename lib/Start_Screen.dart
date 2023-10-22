import 'package:flutter/material.dart';

import 'HomeScreen.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 86),
            ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.asset(
                'assets/images/driver-license.png',
                height: 330,
                width: 352,
              ),
            ),
            SizedBox(height: 37),
            const SizedBox(
              height: 100,
              width: 300,
              //color: Colors.green,
              child: Column(
                children: [
                  Text(
                    'Chào mừng bạn đến với',
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24),
                  ),
                  Text(
                    'ôn thi GPLX',
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 19),
            TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomeScreen()));
                },
                style: TextButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                    minimumSize: const Size(354, 52),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)))),
                child: const Text('Bắt đầu',
                    style:
                        TextStyle(fontWeight: FontWeight.w700, fontSize: 21)))
          ],
        ),
      ),
    );
  }
}
