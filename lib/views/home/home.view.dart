import 'package:borrow_app/widgets/buttons/primary_button.widget.dart';
import 'package:borrow_app/widgets/buttons/secondary_button.widget.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(bottom: 120),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        // decoration: const BoxDecoration(
        //   image: DecorationImage(
        //     image: AssetImage("assets/images/background"),
        //     fit: BoxFit.cover,
        //   ),
        // ),
        child: SafeArea(
          top: true,
          bottom: true,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              PrimaryButtonWidget(
                onPressed: () => Navigator.pushNamed(context, "/login"),
                text: "Login",
              ),
              const SizedBox(
                height: 20,
              ),
              SecondaryButtonWidget(
                onPressed: () => Navigator.pushNamed(context, "/register"),
                text: "Register",
              )
            ],
          ),
        ),
      ),
    );
  }
}
