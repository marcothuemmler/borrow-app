import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginScreen extends ConsumerState{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text("E-Mail:"),
                const SizedBox(
                  width: 300,
                  height: 40,
                  child: TextField(),
                ),
                const Text("Passwort:"),
                const SizedBox(
                  width: 300,
                  height: 40,
                  child: TextField(obscureText: true,),
                ),
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      elevation: 12.0,
                        backgroundColor: Colors.green
                    ),
                    child: const Text("Login")
                ),
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      elevation: 12.0,
                      backgroundColor: Colors.blueAccent
                    ),
                    child: const Text("Registrieren")
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}