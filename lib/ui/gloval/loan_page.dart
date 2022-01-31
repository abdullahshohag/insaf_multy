import 'package:flutter/material.dart';
import 'package:insaf_multiparpas/models/loan_model.dart';
import 'package:insaf_multiparpas/repositories/loan_repo.dart';

import '../app_routh_path.dart';

class LoanPage extends StatelessWidget {
  const LoanPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('Loan Page'), centerTitle: true,),
      body: FutureBuilder(
        future: LoanRepo.loanList(),
        builder: (context, snapshot) {
          List<LoanModel> claints = snapshot.data as List<LoanModel>;
          return ListView.builder(
            itemCount: claints.length,
            itemBuilder: (context, index) {
              LoanModel claint = claints.elementAt(index);
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
      mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.popAndPushNamed(context, AppRoutesPath.MainPage);
              },
              child: Text('Back Home')),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, AppRoutesPath.SonchiPage);
              },
              child: Text('Go Sonchi')),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, AppRoutesPath.ClaintList);
              },
              child: Text('Go Claints')),          
        ],
      ),
    );
  }
}