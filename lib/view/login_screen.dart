import 'package:flutter/material.dart';
 
class AuthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFCE4EC), // Rosa claro do fundo
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/entrada.png', height: 200), // Imagem ilustrativa
            SizedBox(height: 20),
            Text(
              'Find Your New Friends Here',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFFFF6F61), // Rosa mais escuro
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFFF6F61), // Botão com a cor rosa
              ),
              child: Text('Continue'),
            ),
          ],
        ),
      ),
    );
  }
}