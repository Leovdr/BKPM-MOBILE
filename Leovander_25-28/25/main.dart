import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Dua Lima",
    home: BelajarForm(),
  ));
}

class BelajarForm extends StatefulWidget {
  @override
  _BelajarFormState createState() => _BelajarFormState();
}

class _BelajarFormState extends State<BelajarForm> {
  @override
  final _formKey = GlobalKey<FormState>();
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Belajar Form Flutter"),
        ),
        body: Form(
          key: _formKey,
          child: Container(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: [
                TextFormField(
                  decoration: new InputDecoration(
                    hintText: "contoh: Leovander Aditama",
                    labelText: "Leovander Aditama",
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
              Padding( padding: const EdgeInsets.all(8.0),
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
    );
  }
}