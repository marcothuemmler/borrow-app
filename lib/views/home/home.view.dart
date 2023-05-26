import "package:borrow_app/services/routing/routes.dart";
import "package:flutter/material.dart";
import "package:go_router/go_router.dart";

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    // SystemChrome.setSystemUIOverlayStyle(
    //   const SystemUiOverlayStyle(
    //     statusBarBrightness: Brightness.dark,
    //   ),
    // );
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          ShaderMask(
            shaderCallback: (rect) {
              return const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.black, Colors.black87, Colors.black26, Colors.transparent],
              ).createShader(Rect.fromLTRB(0, 0, rect.width, MediaQuery.of(context).size.height));
            },
            blendMode: BlendMode.dstIn,
            child: Image.asset(
              'assets/images/mess.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Column(
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
              ),
              const SizedBox(
                height: 120,
              )
            ],
          ),
        ],
      ),
    );
  }
}
