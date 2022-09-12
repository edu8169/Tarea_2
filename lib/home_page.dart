import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

enum TypeOfTip { amazing, good, okay }

class _HomePageState extends State<HomePage> {
  // TODO: completar todo lo necesario
  var money;
  bool state = false;
  TypeOfTip? _selected = TypeOfTip.amazing;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tip time'),
      ),
      body: ListView(
        children: [
          SizedBox(height: 14),
          ListTile(
            leading: Icon(Icons.store),
            title: Padding(
              padding: EdgeInsets.only(right: 24),
              child: TextField(
                onChanged: (value) => setState(() {
                  money = value;
                }),
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green)),
                  border: OutlineInputBorder(),
                  labelText: 'Cost of service',
                ),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.room_service),
            title: Text("How was the service?"),
          ),
          Column(
            children: <Widget>[
              RadioListTile<TypeOfTip>(
                title: const Text('Amazing 20%'),
                value: TypeOfTip.amazing,
                groupValue: _selected,
                onChanged: (TypeOfTip? value) {
                  setState(() {
                    _selected = value;
                  });
                },
              ),
              RadioListTile<TypeOfTip>(
                title: const Text('Good 18%'),
                value: TypeOfTip.good,
                groupValue: _selected,
                onChanged: (TypeOfTip? value) {
                  setState(() {
                    _selected = value;
                  });
                },
              ),
              RadioListTile<TypeOfTip>(
                title: const Text('Okay 15%'),
                value: TypeOfTip.okay,
                groupValue: _selected,
                onChanged: (TypeOfTip? value) {
                  setState(() {
                    _selected = value;
                  });
                },
              ),
            ],
          ),
          ListTile(
            leading: Icon(Icons.credit_card),
            title: Text("Round up tip"),
            trailing: Switch(
              value: state,
              activeColor: Colors.green,
              onChanged: (bool value) {
                setState(() {
                  state = value;
                });
              },
            ),
          ),
          MaterialButton(
            child: Text("CALCULATE"),
            color: Colors.green,
            onPressed: () {},
          ),
          Text("Tip amount: \$20.00"),
        ],
      ),
    );
  }

  void _tipCalculation() {
    // TODO: completar
  }
}
