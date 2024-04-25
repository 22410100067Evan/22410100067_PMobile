import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kalkulator Super canggih',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController num1Controller = TextEditingController();
  TextEditingController num2Controller = TextEditingController();
  TextEditingController outputController = TextEditingController();

  String output = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Kalkulator Sederhana'),
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(10),
              child: TextField(
                controller: num1Controller,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Masukkan Angka pertama',
                    hintText: 'Masukkan Angka'),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(10),
              child: TextField(
                controller: num2Controller,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Masukkan Angka Kedua',
                    hintText: 'Masukkan Angka'),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    calculate('+');
                  },
                  child: Text('Tambah'),
                ),
                ElevatedButton(
                  onPressed: () {
                    calculate('-');
                  },
                  child: Text('Kurang'),
                ),
                ElevatedButton(
                  onPressed: () {
                    calculate('*');
                  },
                  child: Text('Kali'),
                ),
                ElevatedButton(
                  onPressed: () {
                    calculate('/');
                  },
                  child: Text('Bagi'),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(10),
              child: TextField(
                controller: outputController,
                enabled: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Hasil',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void calculate(String operation) {
    double? num1 = double.tryParse(num1Controller.text);
    double? num2 = double.tryParse(num2Controller.text);
    if (num1 != null && num2 != null) {
      switch (operation) {
        case '+':
          output = (num1 + num2).toString();
          break;
        case '-':
          output = (num1 - num2).toString();
          break;
        case '*':
          output = (num1 * num2).toString();
          break;
        case '/':
          if (num2 != 0) {
            output = (num1 / num2).toString();
          } else {
            output = 'Error: Pembagian dengan nol';
          }
          break;
        default:
          output = 'Yo ndak iso';
      }
    } else {
      output = 'Input salah';
    }
    setState(() {
      outputController.text = output;
    });
  }
}
