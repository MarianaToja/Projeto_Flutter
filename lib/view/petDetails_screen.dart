import 'package:flutter/material.dart';

class PetDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFF6F61),
        title: Text('Pet Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/images/pet.png', height: 150),
            SizedBox(height: 20),
            Text(
              'Lucky',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: Color(0xFFFF6F61),
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Male, 3 Years Old',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Lucky is a friendly dog who loves to play and be around people. He is looking for a new home.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
            Spacer(),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFFF6F61), // Botão com a cor rosa
              ),
              child: Text('Adopt Me'),
            ),
          ],
        ),
      ),
    );
  }
}
