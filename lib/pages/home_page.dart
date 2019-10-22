import 'package:flutter/material.dart';
import '../service/service.method.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String homePageContent = '获取初始数据';
  
  @override
  void initState() { 
    super.initState();
    getHomePageContent().then((val) {
      print('接口返回数据.........');
      setState(() {
        homePageContent = val.toString();
      });
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('百姓生活+')),
      body: SingleChildScrollView(
        child: Text(homePageContent),
      ),
    );
  }
}

