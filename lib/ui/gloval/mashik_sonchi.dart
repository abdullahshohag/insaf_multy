import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../app_routh_path.dart';
import 'my_drawer.dart';

class MashikSonchi extends StatelessWidget {
  const MashikSonchi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController idController = TextEditingController();
    TextEditingController nameController = TextEditingController();
    TextEditingController mobController = TextEditingController();
    TextEditingController addsController = TextEditingController();
    final firestoreInstance = FirebaseFirestore.instance;

    FirebaseAuth auth = FirebaseAuth.instance;
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: Text('Insaf Multiparpas Kachaite'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Text('Mashik Sonchi Page'),
          Flexible(
            child: TextField(
              controller: idController,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(10),
                  border: OutlineInputBorder(),
                  label: Text('Clnt Id')),
            ),
          ),
          SizedBox(width: 05.0),
          Flexible(
            child: TextField(
                controller: nameController,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10),
                    border: OutlineInputBorder(),
                    label: Text('Name'))),
          ),
          SizedBox(width: 05.0),
          Flexible(
            child: TextField(
                controller: mobController,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10),
                    border: OutlineInputBorder(),
                    label: Text('Mobile N0'))),
          ),
          SizedBox(width: 05.0),
          Flexible(
            child: TextField(
                controller: addsController,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10),
                    border: OutlineInputBorder(),
                    label: Text('Address'))),
          ),
          ElevatedButton(
            onPressed: () async {
              print(nameController.text);
              try {
                await firestoreInstance.collection("claint_submit").add({
                  "id": "1",
                  "name": "www",
                  "mobile": "sss",
                  "address": "awewewew",
                }).then((value) {
                  print(value.id);
                  //  var firebaseUser =  FirebaseAuth.instance.currentUser;
                  try {
                    firestoreInstance
                        .collection("claint_submit")
                        .doc(value.id)
                        .get()
                        .then((value) {
                      print(value.data());
                      print(value.data()!["name"]);
                      // Get.toNamed(Routes.NOTIFICATION_DETAILS,
                      //     arguments: {
                      //       'title': value.data()!["title"],
                      //       'message': value.data()!["message"],
                      //       'item': value.data()!["itme"],
                      //     });
                    });
                    // titleController.clear();
                    // controller.messageController.clear();
                  } catch (e) {
                    print(e);
                  }
                });
                // try {
                //   homeController.firestoreInstance
                //       .collection("notification")
                //       .get()
                //       .then((querySnapshot) {
                //     querySnapshot.docs.forEach((result) {
                //       print(result.data());
                //     });
                //   });
                // } catch (e) {
                //   print(e);
                // }
              } catch (err) {
                print(err);
              }
            },
            child: Text('Submit'),
          ),
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
