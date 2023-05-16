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
                  width: 200,
                  height: 30,
                  child: TextField(),
                ),
                const Text("Passwort:"),
                const SizedBox(
                  width: 200,
                  height: 30,
                  child: TextField(),
                ),
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      elevation: 12.0,
                      textStyle: const TextStyle(color: Colors.green),
                    ),
                    child: const Text("Login")
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}