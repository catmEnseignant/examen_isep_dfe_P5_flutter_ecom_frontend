import 'package:exam_ecom/pages/auth.page.dart';
import 'package:exam_ecom/pages/categorie.page.dart';
import 'package:exam_ecom/pages/categorie_form.page.dart';
import 'package:exam_ecom/pages/home.page.dart';
import 'package:exam_ecom/pages/produit_form_page.dart';
import 'package:exam_ecom/pages/produit_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Ma premier Application",
    );
  }
}