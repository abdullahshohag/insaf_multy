import 'package:flutter/material.dart';
import 'package:insaf_multiparpas/services/api_services.dart';
import 'package:insaf_multiparpas/models/user.dart';
import '../app_routh_path.dart';
import './my_drawer.dart';

class FdrPage extends StatelessWidget {
  const FdrPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ApiServices services = ApiServices();
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: Text('Insaf Maltiparpas DPS'), centerTitle: true,
      ),
      body: FutureBuilder(
        future: services.getUserList(),
        builder: (context, AsyncSnapshot<List<User>>? snapshot) {
          if (snapshot!.hasData) {
            List<User> userList = snapshot.data!;
            return ListView.builder(
              itemCount: userList.length,
              itemBuilder: (context, index) {
                User user = userList[index];
                return ListTile(
                  leading: CircleAvatar(
                    child: Text('${user.id}'),
                  ),
                  title: Text('${user.title}'),
                  subtitle: Text('${user.body}'),
                );
              },
            );
          } else {
            return Center(child: CircularProgressIndicator());
          }
        }),
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