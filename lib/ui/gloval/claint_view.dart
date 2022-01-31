import 'package:flutter/material.dart';
import 'package:insaf_multiparpas/models/claint_model.dart';
import 'package:insaf_multiparpas/repositories/claint_repo.dart';
import 'package:insaf_multiparpas/ui/gloval/my_drawer.dart';

import '../app_routh_path.dart';

class ClaintView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: MyDrawer(),
      appBar: AppBar(
        title: Text('ClaintView'),centerTitle: true,
      ),
      body: FutureBuilder(
        future: ClaintRepo.claintList(),
        builder: (context, snapshot) {
          List<ClaintModel> claints = snapshot.data as List<ClaintModel>;
          return ListView.builder(
            itemCount: claints.length,
            itemBuilder: (context, index) {
              ClaintModel claint = claints.elementAt(index);
              return ListTile(
                leading: Text('${claint.id}'),
                title: Text('${claint.name}'),
                subtitle: Text('${claint.address}'),
                trailing: CircleAvatar(child: Image.network('${claint.image}')),
              );
            },
          );
        },
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.popAndPushNamed(context, AppRoutesPath.SonchiPage);
              },
              child: Text('Back To Sonchi')),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, AppRoutesPath.LoanPage);
              },
              child: Text('Go To Loan')),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, AppRoutesPath.MainPage);
              },
              child: Text('Go To Main')),
        ],
      ),
    );
  }
}
