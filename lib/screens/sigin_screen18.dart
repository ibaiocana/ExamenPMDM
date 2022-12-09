import 'package:examenpmdm18/screens/home_screen18.dart';
import 'package:examenpmdm18/screens/listview_screen18.dart';
import 'package:flutter/material.dart';
import 'package:examenpmdm18/widgets/widgets18.dart';

class SigInScreen extends StatelessWidget {
  const SigInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {};

    return Scaffold(
        body: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Form(
              key: myFormKey,
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 40),
                    child: FlutterLogo(
                      size: 100,
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  CustomTextFormField18(
                    obscureText: false,
                    labelText: 'Usuario',
                    suffixIcon: Icon(Icons.group_outlined),
                    formProperty: 'usuario',
                    formValues: formValues,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CustomTextFormField18(
                    obscureText: true,
                    labelText: 'Contraseña',
                    formProperty: 'contraseña',
                    formValues: formValues,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        FocusScope.of(context).requestFocus(FocusNode());

                        if (!myFormKey.currentState!.validate()) {
                          print('Formulario no valido');
                          return;
                        }
                        print(formValues);
                        final route = MaterialPageRoute(
                            builder: ((context) => const ListViewScreen()));
                        Navigator.pushReplacement(context, route);
                      },
                      child: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 200),
                        child: Text('Sign in'),
                      )),
                  Padding(
                    padding: const EdgeInsets.only(top: 400, left: 450),
                    child: FloatingActionButton(
                      child: const Icon(Icons.close),
                      onPressed: () => Navigator.pop(context),
                    ),
                  )
                ],
              ),
            )));
  }
}
