import 'package:flutter/material.dart';

class StackPage2 extends StatelessWidget {
  const StackPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack'),
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://www.parksavers.com/wp-content/uploads/2021/06/Mickey-and-Friends-50th-768x512.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(color: Colors.white54),
          Positioned(
            bottom: 48,
            left: 10,
            right: 10,
            child: Card(
              elevation: 12,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(top: 10.0),
                    child: Text(
                      'Magic Kingdom',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                        'O Disney Magic Kingdom foi a primeira atração a ser inaugurada no enorme Walt Disney World de Orlando, em 1971. Ele continua sendo um dos parques temáticos mais populares do mundo. O parque, que tem o marcante Castelo da Cinderela como símbolo central, apresenta uma longa lista de montanhas-russas, atrações e brinquedos inspirados nos filmes da Disney espalhados por uma enorme área com mais de 43 hectares. O Disney Magic Kingdom fica a cerca de 37 km a sudoeste do centro de Orlando.'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
