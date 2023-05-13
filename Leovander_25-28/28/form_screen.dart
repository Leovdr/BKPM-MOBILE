import 'package:flutter/material.dart';

class FormScreen extends StatefulWidget{
  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen>{
  final _formfield = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passController = TextEditingController();
  bool passToggle = true;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Menu Register"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 60),
          child: Form(
            key: _formfield,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Image.asset("images/avatar.jpg",
              height: 200,
              width: 200,
              ),
              SizedBox(height: 50),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                controller: emailController,
                decoration: InputDecoration(
                  labelText: "Email",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.email),
                ),
                ),
                SizedBox(height: 20),
                TextFormField(
                keyboardType: TextInputType.emailAddress,
                controller: passController,
                decoration: InputDecoration(
                  labelText: "Password",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock),
                  suffix: InkWell(
                    onTap: (){
                      setState(() {
                      passToggle = !passToggle;
                    });
                    },
                    child: Icon(passToggle ? Icons.visibility : Icons.visibility_off),
                  )
                ),
                ),
                SizedBox(height: 60),
                InkWell(
                  onTap: (){
                  },
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.indigo,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                      child: Text("Register", style: TextStyle(
                        color: Colors.white,
                        fontSize:20,
                        fontWeight: FontWeight.bold,
                      )),
                      ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Leovander Aditama",
                      style: TextStyle(
                        fontSize: 16,
                        ),
                      ),
                ],)
            ],
            ),
          ),
          ),
      ),
    );
  }
}