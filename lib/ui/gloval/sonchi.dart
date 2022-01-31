import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:insaf_multiparpas/ui/gloval/custom_button.dart';
import 'package:insaf_multiparpas/ui/gloval/insaf_logo.dart';
import '../app_routh_path.dart';
import './my_drawer.dart';

class SonchiPage extends StatelessWidget {
  const SonchiPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: Text('Insaf Multiparpas Sonchi Page'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            InsafLogo(),
            Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: CustomButton(
                        name: 'Doinik',
                        color: Colors.purpleAccent,
                        iconData: Icons.money,
                        onTab: () {
                          Navigator.pushNamed(context, AppRoutesPath.Doynik);
                        },
                      ),
                    ),
                    Expanded(
                      child: CustomButton(
                        name: 'Shaptahik',
                        color: Colors.lightBlue,
                        iconData: Icons.account_balance_wallet,
                        onTab: () {
                          Navigator.pushNamed(context, AppRoutesPath.Shaptahik);
                        },
                      ),
                    ),
                  ]),
                  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: CustomButton(
                        name: 'Mashik',
                        color: Colors.redAccent,
                        iconData: Icons.ad_units,
                        onTab: () {
                          Navigator.pushNamed(context, AppRoutesPath.Mashik);
                        },
                      ),
                    ),
                    Expanded(
                      child: CustomButton(
                        name: 'Traymashik',
                        color: Colors.yellowAccent.shade200,
                        iconData: Icons.account_balance_sharp,
                        onTab: () {
                          Navigator.pushNamed(context, AppRoutesPath.SodoshoList);
                        },
                      ),
                    ),
                  ]),
          ],
        ),
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.popAndPushNamed(context, AppRoutesPath.MainPage);
              },
              child: Text('Back To Main')),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, AppRoutesPath.LoanPage);
              },
              child: Text('Go To Loan')),
        ],
      ),
    );
  }
}
