import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:testtaskrickmorti/gen/assets.gen.dart';

import '../app_router.gr.dart';

@RoutePage()
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3));
    AutoRouter.of(context).replace(const CharactersRoute());
    super.initState();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Center(
          child: Image.asset(Assets.img.logoRickAndMorty.path),
        ),
      );
}
