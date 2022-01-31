import 'package:flutter/material.dart';
import 'package:insaf_multiparpas/models/claints_model2.dart';
import '../app_routh_path.dart';
import 'my_drawer.dart';

class DaynikSonchi extends StatelessWidget {
  const DaynikSonchi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<ClaintsModel2> claintsList = [
      ClaintsModel2(id: 1, name: 'Ikbal', title: 'Mamato Bai', phone: 01711007337, img: 'assets/json/shirt5.jpeg'),
      ClaintsModel2(id: 2, name: 'Himel', title: 'Tea Shop', phone: 01711827363, img: 'assets/json/shirt5.jpeg'),
      ClaintsModel2(id: 3, name: 'Manik', title: 'Vadeshora', phone: 01819157433, img: ''),
      ClaintsModel2(id: 4, name: 'Rahim', title: 'Atla', phone: 01711007337, img: ''),
      ClaintsModel2(id: 5, name: 'Mashok', title: 'Poranbari', phone: 01913018482, img: ''),
      ClaintsModel2(id: 6, name: 'Manik', title: 'Vadeshora', phone: 01819157433, img: ''),
      ClaintsModel2(id: 7, name: 'Rahim', title: 'Atla', phone: 01711007337, img: ''),
      ClaintsModel2(id: 8, name: 'kamal', title: 'Poranbari', phone: 01913018482, img: ''),
      ClaintsModel2(id: 9, name: 'Sujan', title: 'Shohata', phone: 01819157433, img: ''),
      ClaintsModel2(id: 10, name: 'Rahim', title: 'Atla', phone: 01711007337, img: ''),
      ClaintsModel2(id: 11, name: 'Khalil', title: 'Poranbari', phone: 01913018482, img: ''),
    ];
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: Text('Insaf Multiparpas Doynik Sonchi Page'),
        centerTitle: true,
      ),
      body: 
          ListView.builder(
            itemCount: claintsList.length,
            itemBuilder: (context, index) {
        return ListTile(
          leading: Text('${claintsList.elementAt(index).id}'),
          title: Text('${claintsList.elementAt(index).name}'),
          subtitle: Text('${claintsList.elementAt(index).title}'),
          trailing: Icon(Icons.phone),
          onTap: () {
            
          },);
      },
      
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
