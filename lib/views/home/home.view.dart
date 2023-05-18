import "package:borrow_app/services/routing/routes.dart";
import "package:flutter/material.dart";
import "package:go_router/go_router.dart";

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
              ElevatedButton(
                onPressed: () => context.goNamed(loginRoute.name),
                child: const Text("Login"),
              ),
              const SizedBox(
                height: 20,
              ),
              TextButton(
                onPressed: () => context.goNamed(signupRoute.name),
                child: const Text("Register"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
