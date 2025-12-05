import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboar Member'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              width: double.infinity,
              height: 100,
              decoration: BoxDecoration(
                // color: Colors.pink,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.purple)
              ),
              child: Row(
                children: [
                  CircleAvatar(child: Text('KP')),
                  const SizedBox(width: 16),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Kevin Pasaribu',
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      Text('Senior Programmer'),
                      Text('hendra_pa1000@unprimdn.ac.id'),
                    ],
                  ),
                ],
              ),
            ),


            const SizedBox(height: 8),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              width: double.infinity,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.blueAccent)
              ),
              child: Row(
                children: [
                  CircleAvatar(child: Text('GD')),
                  const SizedBox(width: 16),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Gandul DSA',
                          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        Text('Junior Data Science'),
                        Text('ghaniyagst@gmail.com'),
                      ],
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
