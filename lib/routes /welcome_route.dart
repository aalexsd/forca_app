import 'package:flutter/material.dart';
import 'package:forca_app/routes%20/home_route.dart';

class WelcomeRoutee extends StatefulWidget {
  const WelcomeRoutee({Key? key}) : super(key: key);

  @override
  State<WelcomeRoutee> createState() => _WelcomeRouteeState();
}

class _WelcomeRouteeState extends State<WelcomeRoutee> {
  bool _checkBoxIsChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Bem-vindo',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text(
                      'Marcar como lido',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Checkbox(
                      value: _checkBoxIsChecked,
                      onChanged: (status) {
                        setState(() {
                          _checkBoxIsChecked = status!;
                        });
                      },
                    ),
                  ],
                ),
                SizedBox(
                  width: 200,
                  child: ElevatedButton(
                    onPressed: () => clickCheckBox(),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.black87),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                              side: const BorderSide(color: Colors.black87))),
                    ),
                    child:
                        const Text('Avançar', style: TextStyle(fontSize: 20)),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  void clickCheckBox() {
    if (_checkBoxIsChecked == true) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const HomeRoute()));
    }
  }
}
