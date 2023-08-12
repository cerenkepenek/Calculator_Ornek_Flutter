import 'package:flutter/material.dart';

void main() {
  runApp(const Calculator());
}

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  num s1 = 0, s2 = 0, sonuc = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.calculate),
          centerTitle: true,
          backgroundColor: Colors.red,
          title: Text('Hesap Makinesi'),
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: TextField(
                      onChanged: (value) {
                        s1 = double.parse(value);
                      },
                      decoration:
                          new InputDecoration(labelText: "Birinci sayı"),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: TextField(
                      onChanged: (value) {
                        s2 = double.parse(value);
                      },
                      decoration: new InputDecoration(labelText: "İkinci sayı"),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(25, 25, 25, 10),
                    child: Text('Yapmak istediğiniz işlemi seçiniz'),
                  ),
                  Divider(
                    height: 00,
                    thickness: 1,
                    indent: 80,
                    endIndent: 80,
                    color: Colors.black,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(35.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        FloatingActionButton(
                            backgroundColor: Colors.red,
                            onPressed: () {
                              setState(() {
                                sonuc = (s1 + s2);
                              });
                            },
                            child: Text(
                              '+',
                              style: TextStyle(fontSize: 25),
                            )),
                        FloatingActionButton(
                            backgroundColor: Colors.red,
                            onPressed: () {
                              setState(() {
                                sonuc = s1 - s2;
                              });
                            },
                            child: Text(
                              '-',
                              style: TextStyle(fontSize: 35),
                            )),
                        FloatingActionButton(
                            backgroundColor: Colors.red,
                            onPressed: () {
                              setState(() {
                                sonuc = (s1 * s2);
                              });
                            },
                            child: Text(
                              'x',
                              style: TextStyle(fontSize: 25),
                            )),
                        FloatingActionButton(
                            backgroundColor: Colors.red,
                            onPressed: () {
                              setState(() {
                                sonuc = (s1 / s2);
                              });
                            },
                            child: Text(
                              '/',
                              style: TextStyle(fontSize: 25),
                            )),
                      ],
                    ),
                  ),
                  Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.red,
                      ),
                      alignment: Alignment.center,
                      width: 100,
                      height: 100,
                      child: Text(
                        sonuc.toString(),
                        style: TextStyle(color: Colors.white, fontSize: 50),
                      ))
                ]),
          ),
        ),
      ),
    );
  }
}
