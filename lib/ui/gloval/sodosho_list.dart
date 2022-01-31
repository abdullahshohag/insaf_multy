
import 'package:flutter/material.dart';

import '../app_routh_path.dart';
import 'my_drawer.dart';

class SodoshoList extends StatelessWidget {
  List<String> getimage=[
      "assets/json/man1.jpg", "assets/json/man2.jpg", "assets/json/man3.jfif", "assets/json/man4.jfif",
      "assets/json/man5.jfif","assets/json/man6.jfif", "assets/json/man7.jpg", "assets/json/man8.jfif",
      "assets/json/man9.jpg","assets/json/man1.jpg", "assets/json/man2.jpg", "assets/json/man3.jfif"];
       List<String> getname=[
      "Jobaier", "Hakim", "Liton", "Alal", "Zahir","Ramjan", "Jobaier", "Hakim", "Liton", "Alal", "Zahir","Ramjan"];
       List<String> getmobile=[
      "01711117211", "01819157433", "01913018483", "01842007337", "01711042022","01732567432", "01975007337",
      "01611453789", "01845623415", "01819157433", "01913018483", "01842007337"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: MyDrawer(),
      appBar: AppBar(
        title: Text('Traymashik Sodosho List'), centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: getname.length,
          itemBuilder: (context, index) {
            return Container(
                padding: EdgeInsets.all(10.0),
                margin: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: Colors.deepOrange,
                  borderRadius: BorderRadius.circular(15.0),),
                child:ListTile(
                  leading: Image.asset('${getimage[index]}'),
                  title: Text('${getname[index]}'),
                  subtitle: Text('${getmobile[index]}'),
                  trailing: IconButton(onPressed: () => print('Icon Button'),
                      icon: Icon(Icons.phone, color: Colors.amberAccent,size: 50.0,),),
                ));
          },),
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
