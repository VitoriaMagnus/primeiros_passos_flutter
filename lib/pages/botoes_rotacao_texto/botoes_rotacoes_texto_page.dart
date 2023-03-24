import 'package:flutter/material.dart';

class BotoesRotacoesTextoPage extends StatelessWidget {
  const BotoesRotacoesTextoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Botões e Rotação de Texto'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                RotatedBox(
                  quarterTurns: -1,
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.amber,
                    child: const Text('Vitória Magnus'),
                  ),
                ),
                const Icon(Icons.add),
              ],
            ),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                foregroundColor: Colors.amber,
                padding: const EdgeInsets.all(10),
                minimumSize: const Size(80, 10),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                ),
              ),
              child: const Text('Salvar'),
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.exit_to_app)),
            ElevatedButton.icon(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber,
                shadowColor: Colors.white,
                minimumSize: const Size(120, 50),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
              ),
              icon: const Icon(Icons.airplane_ticket),
              label: const Text('Modo Avião'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                shadowColor: MaterialStateProperty.all(Colors.amber),
                // minimumSize: const MaterialStatePropertyAll(Size(150, 50)),
                minimumSize: MaterialStateProperty.resolveWith((states) {
                  if (states.contains(MaterialState.pressed)) {
                    return const Size(150, 50);
                  } else if (states.contains(MaterialState.hovered)) {
                    return const Size(180, 90);
                  }
                  return const Size(120, 50);
                }),
                backgroundColor:
                    MaterialStateProperty.resolveWith<Color?>((states) {
                  if (states.contains(MaterialState.pressed)) {
                    return Colors.black;
                  } else if (states.contains(MaterialState.hovered)) {
                    return Colors.purple;
                  }
                  return Colors.amber;
                }),
              ),
              child: const Text('Salvar'),
            ),
            const SizedBox(height: 10),
            InkWell(
              onTap: () {},
              child: const Text('InkWell'),
            ),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: () => print('Gesture clicado'),
              onVerticalDragStart: (_) => print('Start $_'),
              child: const Text('GestureDetector'),
            ),
            const SizedBox(height: 10),
            Container(
              width: 300,
              height: 100,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.purple, Colors.pink],
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(50),
                ),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 10,
                    offset: Offset(0, 5),
                    color: Colors.amber,
                  ),
                ],
              ),
              child: InkWell(
                onTap: () {},
                borderRadius: BorderRadius.circular(50),
                child: const Center(
                  child: Text(
                    'Botão Salvar',
                    style: TextStyle(fontSize: 22, color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
