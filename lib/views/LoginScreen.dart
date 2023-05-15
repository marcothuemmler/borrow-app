import 'package:borrow_app/views/my_home.view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginScreen extends ConsumerState<MyHomeView>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
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