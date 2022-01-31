import 'package:flutter/material.dart';

import '../app_routh_path.dart';
import '../insaf_multi_mainpage.dart';
import '../my_homepage.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(padding: EdgeInsets.zero, children: [
        DrawerHeader(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              'Insaf Multiparpas',
              style: TextStyle(color: Colors.white),
            ),
          ]),
          decoration: BoxDecoration(
              image: DecorationImage(
            image: NetworkImage(
                'https://image.shutterstock.com/image-photo/silhouette-man-sitting-relaxing-under-600w-519411058.jpg'),
            fit: BoxFit.fill,
          )),
        ),
        Padding(padding: EdgeInsets.all(07.0), child: Text('Introduction', style: TextStyle(color: Colors.redAccent),)),
        ListTile(
          leading: Icon(Icons.favorite,color: Colors.blue),
          title: Text('DPS'),
          onTap: () {
            Navigator.pushNamed(context, AppRoutesPath.DPSPage);
          }),
        ListTile(leading: Icon(Icons.favorite,color: Colors.redAccent), title: Text('FDR'),
         onTap: () {
           Navigator.pushNamed(context, AppRoutesPath.FDRPage);
          }),
        ListTile(leading: Icon(Icons.add, color: Colors.lightBlue,), title: Text('SONCHI'),
        onTap: () {
            Navigator.pushNamed(context, AppRoutesPath.SonchiPage);
          }),
           ListTile(leading: Icon(Icons.people,color: Colors.cyanAccent), title: Text('Claints List'),
        onTap: () {
            Navigator.pushNamed(context, AppRoutesPath.ClaintList);
          }),
         ListTile(leading: Icon(Icons.arrow_forward,color: Colors.cyanAccent),
         title: Text('About Insaf',style: TextStyle(color: Colors.green, fontSize: 20.0),
        ),
        onTap: () {
            Navigator.pushNamed(context, AppRoutesPath.AboutInshaf);
          }),
        SizedBox(height: 50.0),
        ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, AppRoutesPath.MainPage);
              },
              child: Text('Go To Main Page')),

              ListTile(
              onTap: () {
               Navigator.pushNamed(context, AppRoutesPath.MyHomePage); 
              },
              leading: Icon(Icons.power_settings_new, color: Colors.black),
              title: Text("Logout",style: TextStyle(color: Colors.black, fontWeight: 
                 FontWeight.bold),
              ),
            ),
      ]),
      
    );
  }
}
