// Suggested code may be subject to a license. Learn more: ~LicenseLog:379011137.
// Suggested code may be subject to a license. Learn more: ~LicenseLog:2668214694.
// Suggested code may be subject to a license. Learn more: ~LicenseLog:610692443.
// Suggested code may be subject to a license. Learn more: ~LicenseLog:555298612.
// Suggested code may be subject to a license. Learn more: ~LicenseLog:2494637347.
// Suggested code may be subject to a license. Learn more: ~LicenseLog:2623917651.
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      drawer: Drawer(
        child: ListView(
          children: const [
            ListTile(title: Text('Home Page')),
            ListTile(title: Text('About Page')),
          ],    
        ),
      ),
      body: MyContainer(),
    
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'Settings'),
        ],
      ),
    );
  }
}

class Heading extends StatelessWidget {
  final String text; // state text bersifat final
  const Heading({Key? key, required this.text})
      : super(key: key); // lalustate text masuk ke constructor
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 28.0,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class BiggerText extends StatefulWidget {
  final String teks;
  const BiggerText({Key? key, required this.teks}) : super(key: key);
  @override
  State<BiggerText> createState() => _BiggerTextState();
}

class _BiggerTextState extends State<BiggerText> {
  double _textSize = 16.0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          widget.teks,
          style: TextStyle(fontSize: _textSize),
        ),
        ElevatedButton(
          child: Text(_textSize == 16.0 ? "Perbesar" : "Perkecil"),
          onPressed: () {
            setState(() {
              _textSize = _textSize == 16.0 ? 32.0 : 16.0;
            });
          },
        )
      ],
    );
  }
}

class MyContainer extends StatelessWidget {
  const MyContainer({Key? key}) : super(key: key);
@override
Widget build(BuildContext context) {
return Container(
color: Colors.blue,
width: 200,
height: 100,
child: const Text(
'Hi',
style: TextStyle(fontSize: 40),
),
);

}
}

