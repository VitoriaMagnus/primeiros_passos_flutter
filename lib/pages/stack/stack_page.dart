import 'package:flutter/material.dart';

class StackPage extends StatelessWidget {
  const StackPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack'),
      ),
      body: Stack(
        alignment: Alignment.topLeft,
        children: [
          Container(
            color: Colors.pink,
            alignment: Alignment.center,
          ),
          Container(
            width: 200,
            height: 200,
            color: Colors.blue,
          ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              width: 300,
              height: 300,
              color: Colors.green,
            ),
          ),
          // Align(
          //   alignment: Alignment.bottomRight,
          //   child: Container(
          //     color: Colors.orange,
          //     width: 150,
          //     height: 150,
          //   ),
          // ),
          Positioned(
            // top: 40,
            right: 100,
            bottom: 10,
            child: Container(
              color: Colors.orange,
              width: 150,
              height: 150,
            ),
          ),
        ],
      ),
    );
  }
}
