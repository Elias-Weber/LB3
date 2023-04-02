import "package:flutter/material.dart";
import "package:flutter/rendering.dart";
import "package:lb3/screens/screen_2.dart";

class HomeScreen extends StatelessWidget {
   HomeScreen({Key? key}) : super(key: key);

  Form_1 form_1 = Form_1();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Startseite"),
      ),
      body: Center(
        child: Column(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                child: Text("Auftrag hinzufügen"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Form_1()),
                  );
                },
              ),
            ),
            Text(Form_1._Kunde),
          ],
        ),
      ),
    );
  }
}
