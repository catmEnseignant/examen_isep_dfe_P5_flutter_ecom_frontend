import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../shared/widget/drawer.header.dart';



/*class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Homepage")),
      drawer: MyDrawer(username: "tesre",),
      body: const Center(child: Text("Bonjour tout le monde, j’utilise Flutter")),
      bottomNavigationBar:null ,
      floatingActionButton: null,
    );
  }
}*/

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map<String,dynamic>? currentUser;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadUser();
  }

  void loadUser() async{
    final pref = await SharedPreferences.getInstance();
    final userString =  await pref.getString("currentUser");
    if (userString!=null){
      final user = jsonDecode(userString);
      print(user);
      setState(() {
        currentUser = user;
      });
    }


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Homepage")),
      drawer: MyDrawer(username: currentUser!["prenom"]),
      body:  Center(child: Text("Bonjour ${currentUser!["prenom"]}")),
      bottomNavigationBar: null,
      floatingActionButton: null,
    );
  }
}
