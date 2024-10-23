import 'package:flutter/material.dart';
 
class FavoritesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorites'),
        backgroundColor: Color(0xFFFF6F61),
      ),
      backgroundColor: Color(0xFFFCE4EC),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: 5, // Número de pets favoritados
          itemBuilder: (context, index) {
            return ListTile(
              leading: Image.asset('assets/images/pet.png', height: 50),
              title: Text('Lucky'),
              subtitle: Text('3 Years Old'),
              trailing: Icon(Icons.favorite, color: Color(0xFFFF6F61)),
            );
          },
        ),
      ),
    );
  }
}