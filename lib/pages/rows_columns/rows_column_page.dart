import 'package:flutter/material.dart';

class RowsColumnPage extends StatelessWidget {
  const RowsColumnPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rows & Column'),
      ),
      body: Container(
        width: double.infinity,
        color: Colors.amber,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Column 1'),
            const Text('Column 2'),
            const Text('Column 3'),
            Container(
              height: 200,
              color: Colors.purple,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text('Elemento Row 1'),
                  Text('Elemento Row 2'),
                  Text('Element Row 3'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
