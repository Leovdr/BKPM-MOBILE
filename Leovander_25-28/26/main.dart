import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Dua Enam",
    home: BelajarForm(),
  ));
}

class BelajarForm extends StatefulWidget {
  @override
  _BelajarFormState createState() => _BelajarFormState();
}

class _BelajarFormState extends State<BelajarForm> {
  double nilaiSlider = 1;
  bool nilaiCheckBox = false;
  bool nilaiSwitch = true;

  @override
  final _formKey = GlobalKey<FormState>();
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Belajar Form Flutter"),
        ),
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                  decoration: new InputDecoration(
                    hintText: "contoh: Leovander Aditama",
                    labelText: "Nama Anda",
                    icon: Icon(Icons.people),
                    border: OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(5.0)),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Nama tidak boleh kosong';
                    }
                    return null;
                  },
                ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    obscureText: true,
                    decoration: new InputDecoration(
                      labelText: 'Password',
                      icon: Icon(Icons.security),
                      border: OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(5.0)),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Password anda tidak boleh kosong';
                      }
                      return null;
                    },
                  ),
                ),
                CheckboxListTile(
                  title: Text("Form Pengisian"),
                  subtitle: Text('dart, widget, flutter'),
                  value: nilaiCheckBox,
                  activeColor: Colors.deepPurpleAccent,
                  onChanged: (value) {
                    setState(() {
                      nilaiCheckBox = value!;
                    });
                  },
                ),
                SwitchListTile(
                  title: Text("Pemrograman Backend"),
                  subtitle: Text('Dart, PHP, Ruby, flutter'),
                  value: nilaiSwitch,
                  activeColor: Colors.red,
                  onChanged: (value) {
                    setState(() {
                      nilaiSwitch = value;
                    });
                  },
                ),
                Slider(
                  value: nilaiSlider,
                  min: 0,
                  max: 100,
                  onChanged: (value) {
                    setState(() {
                      nilaiSlider = value;
                    });
                  },
                ),
                ElevatedButton(
                  child: Text(
                    "Submit",
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()){}
                  },
                ),
              ],
            ),
             ),
        ),
        ),
    );
  }
}