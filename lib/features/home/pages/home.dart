import 'package:flutter/material.dart';

//TODO : delete tout de home, c'était juste pour tester
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(child: Text('it works, page de test')),
        SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            return;
          },
          child: Text('Déconnexion'),
        ),
      ],
    );
  }
}
