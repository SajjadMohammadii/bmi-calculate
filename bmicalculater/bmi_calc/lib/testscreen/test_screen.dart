import 'package:flutter/material.dart';

class testscreen extends StatefulWidget {
  const testscreen({super.key});

  @override
  State<testscreen> createState() => _testscreenState();
}

class _testscreenState extends State<testscreen> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                Text('$counter'),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      counter = counter + 1;
                    });
                  },
                  child: Text('click'),
                ),
                GestureDetector(
                  onTap: () => setState(() {
                    counter = counter + 1;
                  }),
                  child: Container(
                    height: 200,
                    width: 200,
                    color: Colors.blue,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
