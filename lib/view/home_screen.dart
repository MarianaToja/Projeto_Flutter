import 'package:flutter/material.dart';

class PetScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFEE7E4),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            // Location and Search Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '45141 Essen, Germany',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black87,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Icon(Icons.search, color: Colors.black87),
              ],
            ),
            SizedBox(height: 16),
            // Join Community Banner
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Color(0xFFFFE4E1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Join Our Animal Lovers Community',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                        SizedBox(height: 8),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text('Continue'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFFFF6D6D),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 16),
                  Image.asset(
                    'assets/images/entrada.png',
                    height: 50,
                  ), // Substituir com uma imagem correspondente
                ],
              ),
            ),
            SizedBox(height: 24),
            // Categories Row
            Text(
              'Categories',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                categoryButton('Cats', Icons.pets),
                categoryButton('Dogs', Icons.pets),
                categoryButton('Fishes', Icons.pets),
                categoryButton('Birds', Icons.pets),
              ],
            ),
            SizedBox(height: 24),
            // Pets near me title
            Text(
              'Pets near me',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 16),
            // Grid of Pets
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: [
                  petCard('Lucky', '2 km', 'assets/images/dog.jpg'), 
                  petCard('Lily', '4 km', 'assets/images/gato.png'),  
                  petCard('Lucky', '2 km', 'assets/images/dog.jpg'), 
                  petCard('Lily', '4 km', 'assets/images/gato.png'),  
              
                  
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget categoryButton(String label, IconData icon) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Color(0xFFFFE4E1),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Icon(icon, color: Colors.black87),
        ),
        SizedBox(height: 8),
        Text(
          label,
          style: TextStyle(
            fontSize: 14,
            color: Colors.black87,
          ),
        ),
      ],
    );
  }

  Widget petCard(String name, String distance, String imagePath) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            imagePath,
            height: 80,
          ),
          SizedBox(height: 8),
          Text(
            name,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          SizedBox(height: 4),
          Text(
            distance,
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
