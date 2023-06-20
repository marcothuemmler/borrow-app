import "package:borrow_app/services/routing/routes.dart";
import "package:flutter/material.dart";
import "package:flutter_gen/gen_l10n/app_localizations.dart";
import "package:go_router/go_router.dart";

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          ShaderMask(
            shaderCallback: (Rect rect) => const LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: <Color>[
                Colors.black,
                Colors.black87,
                Colors.black26,
                Colors.transparent,
              ],
            ).createShader(Rect.fromLTRB(0, 0, rect.width, rect.height)),
            blendMode: BlendMode.dstIn,
            child: Image.asset("assets/images/mess.jpg", fit: BoxFit.cover),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              ElevatedButton(
                onPressed: () => context.goNamed(loginRoute.name),
                child: Text(AppLocalizations.of(context).login),
              ),
              const SizedBox(
                height: 20,
              ),
              TextButton(
                onPressed: () => context.goNamed(signupRoute.name),
                child: Text(AppLocalizations.of(context).register),
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
