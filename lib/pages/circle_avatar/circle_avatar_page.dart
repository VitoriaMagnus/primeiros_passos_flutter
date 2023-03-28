import 'package:flutter/material.dart';

class CircleAvatarPage extends StatelessWidget {
  const CircleAvatarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Circle Avatar'),
      ),
      body: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ImageAvatar(
              urlImage: 'https://avatars.githubusercontent.com/u/43793445?v=4',
            ),
          ),
          ImageAvatar(
            urlImage:
                'https://media.licdn.com/dms/image/C5603AQEUICnfM6_ErQ/profile-displayphoto-shrink_800_800/0/1651268382143?e=1685577600&v=beta&t=8ujHX6LtjEHP6V2_DE5Lykk8zVfW3sNq2IDq3aK0N8I',
          ),
        ],
      ),
    );
  }
}

class ImageAvatar extends StatelessWidget {
  final String urlImage;

  const ImageAvatar({super.key, required this.urlImage});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            gradient: const LinearGradient(colors: [
              Colors.purple,
              Colors.pink,
              Colors.yellow,
              Colors.orange,
            ], begin: Alignment.topCenter),
            borderRadius: BorderRadius.circular(100),
            color: Colors.pink,
          ),
        ),
        Container(
          width: 100,
          height: 100,
          padding: const EdgeInsets.all(5),
          child: CircleAvatar(
            backgroundImage: NetworkImage(urlImage),
          ),
        ),
        Container(
          width: 100,
          height: 100,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: Colors.pink,
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Text(
                'AO VIVO',
                style: TextStyle(fontSize: 8, color: Colors.white),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
