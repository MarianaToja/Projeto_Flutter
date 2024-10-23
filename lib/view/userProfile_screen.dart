import 'package:flutter/material.dart';
 
class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        backgroundColor: Color(0xFFFF6F61),
      ),
      backgroundColor: Color(0xFFFCE4EC),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/images/user.png'),
            ),
            SizedBox(height: 20),
            Text(
              'Rafael Santos',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Color(0xFFFF6F61),
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Pet Lover',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            Spacer(),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFFF6F61),
              ),
              child: Text('Edit Profile'),
            ),
          ],
        ),
      ),
    );
  }
}