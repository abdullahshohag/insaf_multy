import 'package:insaf_multiparpas/models/exid_pop.dart';
import 'package:insaf_multiparpas/repositories/claint_repo.dart';
import 'package:insaf_multiparpas/ui/gloval/insaf_logo.dart';
import './gloval/my_drawer.dart';
import 'package:flutter/material.dart';
import 'app_routh_path.dart';
import './gloval/custom_button.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope( onWillPop: () => showExitPopup(context),
      child: Scaffold(
        drawer: MyDrawer(),
        appBar: AppBar(
          actions: [Image.network('https://scontent.fdac10-1.fna.fbcdn.net/v/t1.6435-9/67098597_2316650961749691_3340644314656014336_n.jpg?_nc_cat=106&ccb=1-5&_nc_sid=730e14&_nc_eui2=AeHxx5ys1BMyomMnqnpB40hS2kFLP1xys4jaQUs_XHKziLslwlSltW655WNWMQ0xm0ivKiKd_BGaDkyidwjBLKOf&_nc_ohc=daAuoNevNNEAX969QGA&_nc_ht=scontent.fdac10-1.fna&oh=00_AT8IrIm4N71aJVGYWV2Pt8SMX6dxaEJRterAEhMWRarHXQ&oe=6219EB75')],
          title: Text('Insaf Multiparpas Kachaite Main Page'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), label: Text('Search'),
                        suffixIcon: Icon(Icons.search)),
                  ),
                ),
              InsafLogo(),
              SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: CustomButton(
                      name: 'Sonchi',
                      color: Colors.amber.shade400,
                      iconData: Icons.money_sharp,
                      onTab: () {
                        Navigator.pushNamed(context, AppRoutesPath.SonchiPage);
                      },
                    ),
                  ),
                  Expanded(
                    child: CustomButton(
                      name: 'Loan',
                      color: Colors.blueGrey.shade400,
                      iconData: Icons.account_balance_wallet,
                      onTab: () {
                        Navigator.pushNamed(context, AppRoutesPath.LoanPage);
                      },
                    ),
                  ),
                ],
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: CustomButton(
                        name: 'DPS',
                        color: Colors.greenAccent,
                        iconData: Icons.add_reaction,
                        onTab: () {
                          Navigator.pushNamed(context, AppRoutesPath.DPSPage);
                        },
                      ),
                    ),
                    Expanded(
                      child: CustomButton(
                        name: 'FDR',
                        color: Colors.redAccent.shade400,
                        iconData: Icons.save_alt,
                        onTab: () {
                          Navigator.pushNamed(context, AppRoutesPath.FDRPage);
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
                      name: 'Reject',
                      color: Colors.purpleAccent,
                      iconData: Icons.money_off_rounded,
                      onTab: () {
                        Navigator.pushNamed(context, AppRoutesPath.NameList);
                      },
                    ),
                  ),
                  Expanded(
                    child: CustomButton(
                      name: 'Claints',
                      color: Colors.deepOrange.shade400,
                      iconData: Icons.people,
                      onTab: () {
                        Navigator.pushNamed(context, AppRoutesPath.ClaintList);
                      },
                    ),
                  ),
                ],
              ),
              CustomButton(
                name: 'WebView',
                color: Colors.redAccent,
                iconData: Icons.search_rounded,
                onTab: () {
                  Navigator.pushNamed(context, AppRoutesPath.WebView);
                },
              ),
            ],
          ),
        ),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.popAndPushNamed(context, AppRoutesPath.MyHomePage);
                },
                child: Text('Back To Home')),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, AppRoutesPath.ClaintList);
                },
                child: Text('Go Claints List')),
          ],
        ),
      ),
    );
  }
}
