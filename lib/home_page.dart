import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var num1 = 0, num2 = 0, ans = 0;

  final field1 = TextEditingController(text: '0');
  final field2 = TextEditingController(text: '0');

  void add() {
    setState(() {
      num1 = int.parse(field1.text);
      num2 = int.parse(field2.text);
      ans = num1 + num2;
    });
  }

  void sub() {
    setState(() {
      num1 = int.parse(field1.text);
      num2 = int.parse(field2.text);
      ans = num1 - num2;
    });
  }

  void mul() {
    setState(() {
      num1 = int.parse(field1.text);
      num2 = int.parse(field2.text);
      ans = num1 * num2;
    });
  }

  void div() {
    setState(() {
      num1 = int.parse(field1.text);
      num2 = int.parse(field2.text);
      if (num2 != 0.0) {
        ans = (num1 ~/ num2);
      } else {
        ans = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
      ),
      body: new Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
            child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Text(
                  'Answer: ',
                  style: TextStyle(
                      color: Theme.of(context).accentColor, fontSize: 32.0),
                ),
                Text(
                  ans.toString(),
                  style: TextStyle(
                      color: Theme.of(context).accentColor, fontSize: 32.0),
                )
              ],
            ),
            TextField(
              decoration: InputDecoration(
                labelStyle: Theme.of(context).textTheme.display1,
                labelText: 'First Number',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              keyboardType: TextInputType.number,
              autofocus: true,
              controller: field1,
              style: TextStyle(
                fontSize: 32.0,
              ),
            ),
            TextField(
              decoration: InputDecoration(
                labelStyle: Theme.of(context).textTheme.display1,
                labelText: 'Second Number',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              keyboardType: TextInputType.number,
              controller: field2,
              style: TextStyle(
                fontSize: 32.0,
              ),
            ),
            Row(
              children: <Widget>[
                MaterialButton(
                  onPressed: add,
                  height: 96.0,
                  minWidth: 96.0,
                  color: Theme.of(context).accentColor,
                  textColor: Colors.black,
                  child: Text(
                    '+',
                    style:
                        TextStyle(fontSize: 32.0, fontWeight: FontWeight.w300),
                  ),
                ),
                MaterialButton(
                  onPressed: sub,
                  minWidth: 96.0,
                  height: 96.0,
                  color: Theme.of(context).accentColor,
                  textColor: Colors.black,
                  child: Text(
                    '-',
                    style:
                        TextStyle(fontSize: 32.0, fontWeight: FontWeight.w300),
                  ),
                ),
              ],
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            ),
            Row(
              children: <Widget>[
                MaterialButton(
                  onPressed: mul,
                  height: 96.0,
                  minWidth: 96.0,
                  color: Theme.of(context).accentColor,
                  textColor: Colors.black,
                  child: Text(
                    'x',
                    style:
                        TextStyle(fontSize: 32.0, fontWeight: FontWeight.w300),
                  ),
                ),
                MaterialButton(
                  onPressed: div,
                  height: 96.0,
                  minWidth: 96.0,
                  color: Theme.of(context).accentColor,
                  textColor: Colors.black,
                  child: Text(
                    '/',
                    style:
                        TextStyle(fontSize: 32.0, fontWeight: FontWeight.w300),
                  ),
                )
              ],
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            )
          ],
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        )),
      ),
    );
  }
}