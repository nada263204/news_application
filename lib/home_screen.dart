import 'package:flutter/material.dart';
import 'package:news_application/category/category_Screen.dart';
import 'package:news_application/drawer/home_drawer.dart';

class HomeScreen extends StatelessWidget {
static const String routeName ='/';
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        image: DecorationImage(image: AssetImage('assets/images/pattern.png'),
        fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        drawer: HomeDrawer(),
        appBar: AppBar(
          title: Text('News App'),
        ),
        body: CategoryScreen(),
      ),
    );
  }
}