
import 'package:flutter/material.dart';

import '../app_routh_path.dart';
import 'insaf_logo.dart';
import 'my_drawer.dart';

class AboutInshaf extends StatelessWidget {
  const AboutInshaf({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer : MyDrawer(),
      appBar: AppBar(
        title: Text('Insaf Multiparpas Kachaite'),
        centerTitle: true,),
      body:Column(
        children: [
          InsafLogo(),
          Text('About Inshaf Page'),
          Text('ইনসাফ মাল্টিপারপাস মাল্টি-পারপাস কো-অপারেটিভ সোসাইটি লিমিটেড, ব্রাহ্মণবাড়িয়া মোবাইল: 01819157433'),
          
        ],
      ),
     bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.popAndPushNamed(context, AppRoutesPath.SonchiPage);
              },
              child: Text('Back Sonchi')),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, AppRoutesPath.LoanPage);
              },
              child: Text('Go Loan')),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, AppRoutesPath.MainPage);
              },
              child: Text('Go Main')),
        ],
      ),
    );
  }
}