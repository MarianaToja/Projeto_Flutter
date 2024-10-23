import 'package:flutter/material.dart';

class AddPetScreen extends StatelessWidget {

  @override

  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(

        backgroundColor: Color(0xFFFF6F61),

        title: Text('Add New Pet'),
      ),
      backgroundColor: Color(0xFFFCE4EC),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Pet Name',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter pet name',
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Pet Age',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter pet age',
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Pet Description',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Describe the pet',
              ),
              maxLines: 3,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Lógica para adicionar o pet
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFFF6F61),
              ),
              child: Center(child: Text('Add Pet')),
            ),
          ],
        ),
      ),
    );
  }
}
