import 'package:flutter/material.dart';
import 'package:examenpmdm18/theme/app_theme18.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 200),
        child: Center(
          child: Column(
            children: [
              const FlutterLogo(
                size: 200,
              ),
              const SizedBox(
                height: 100,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'sigin');
                  },
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                    child: Text("Sign In"),
                  )),
              const SizedBox(
                height: 30,
              ),
              const ElevatedButton(
                  onPressed: null,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                    child: Text("Sign Up"),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
