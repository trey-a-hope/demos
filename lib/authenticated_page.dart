import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthenticatedPage extends StatefulWidget {
  @override
  _AuthenticatedPageState createState() => _AuthenticatedPageState();
}

class _AuthenticatedPageState extends State<AuthenticatedPage> {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Authenticated by Email/Password'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            try {
              await _auth.signOut();
            } catch (e) {
              print(e.toString());
            }
          },
          child: Text('Sign Out'),
        ),
      ),
    );
  }
}
