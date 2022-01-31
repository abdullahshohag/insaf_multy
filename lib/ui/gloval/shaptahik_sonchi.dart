
import 'package:flutter/material.dart';
import 'package:insaf_multiparpas/helper.dart';
import 'package:insaf_multiparpas/ui/gloval/url_custom_button.dart';
import 'package:url_launcher/url_launcher.dart';
import '../app_routh_path.dart';
import 'my_drawer.dart';

class ShaptahikSonchi extends StatelessWidget {
  // const ShaptahikSonchi({ Key? key }) : super(key: key);
  String url = 'http://flutter.dev';
  String email = 'mailto:smith@example.org?subject=News&body=New%20plugin';
  String phone = 'tel:+1 555 010 999';
  String sms = 'sms:5550101234';
  void geturlLauncher(String url)async {
    if (await canLaunch(url)) {
                    await launch(url);}
                  else {throw 'could not launch $url';}
                }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: Text('Insaf Multiparpas Kachaite'),
        centerTitle: true,),
      body: Center(
        child: Column(
          children: [
            Text('Use URL Launcher'),
            CustomButton(
                onClick: ()async{
                  if(await MyHelper.checkConnectivityState()){ geturlLauncher(url);
                  }else{print('error');
                  final snackBar = SnackBar(
                    content: const Text('Plz Connect To Internet'),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);}
                
                  },
                nameText: Text('Go To Web'),
                icon: Icon(Icons.web)),
            CustomButton(
              onClick: ()async{
                  if(await MyHelper.checkConnectivityState()){ geturlLauncher(email);
                  }else{print('error');
                  final snackBar = SnackBar(
                    content: const Text('Plz Connect To Internet'),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);}                
                  },
                nameText: Text('Go To Email'),
                icon: Icon(Icons.email)),
                CustomButton(
                onClick: ()async{
                  if(await MyHelper.checkConnectivityState()){ geturlLauncher(phone);
                  }else{print('error');
                  final snackBar = SnackBar(
                    content: const Text('Plz Connect To Internet'),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);}                
                  },  
                nameText: Text('Go To Phone'),
                icon: Icon(Icons.phone)),
                CustomButton(
                  onClick: ()async{
                  if(await MyHelper.checkConnectivityState()){ geturlLauncher(sms);
                  }else{print('error');
                  final snackBar = SnackBar(
                    content: const Text('Plz Connect To Internet'),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);}                
                  },  
                nameText: Text('Go To Sms'),
                icon: Icon(Icons.sms)),
          ],
        ),
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