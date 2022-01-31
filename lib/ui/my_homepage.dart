import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:insaf_multiparpas/helper.dart';
import 'package:insaf_multiparpas/ui/gloval/insaf_logo.dart';
import 'app_routh_path.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController namecount = TextEditingController();
  TextEditingController passcount = TextEditingController();
  FirebaseAuth auth = FirebaseAuth.instance;

  String username = '';
  String password = '';
  int chingIndex = 0;
  final List<String> imagList = [
    'https://image.shutterstock.com/image-photo/bangladeshi-taka-bills-isolated-over-260nw-700152067.jpg',
    'https://media.istockphoto.com/photos/bangladeshi-taka-bills-isolated-on-white-background-picture-id515644786',
    'https://images.pexels.com/photos/4386442/pexels-photo-4386442.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
    'https://st2.depositphotos.com/1835351/5455/i/950/depositphotos_54556961-stock-photo-stack-of-money-dollars.jpg',
    'https://previews.123rf.com/images/stalkerstudent/stalkerstudent1512/stalkerstudent151200070/48801441-bank-icon-in-flat-style-with-the-building-facade-with-three-pillars-illustration.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(padding: EdgeInsets.zero, children: [
          DrawerHeader(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                'Insaf Multiparpas',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold),
              ),
            ]),
            decoration: BoxDecoration(
                image: DecorationImage(
              image: NetworkImage(
                  'https://image.shutterstock.com/image-photo/silhouette-man-sitting-relaxing-under-600w-519411058.jpg'),
              fit: BoxFit.fill,
            )),
          ),
          Padding(
              padding: EdgeInsets.all(07.0),
              child: Text(
                'Introduction',
                style: TextStyle(color: Colors.redAccent),
              )),
          ListTile(
              leading: Icon(Icons.arrow_forward, color: Colors.cyanAccent),
              title: Text(
                'About Insaf',
                style: TextStyle(color: Colors.green, fontSize: 20.0),
              ),
              onTap: () {
                Navigator.pushNamed(context, AppRoutesPath.AboutInshaf);
              }),
          ListTile(
            onTap: () {
              Navigator.pushNamed(context, AppRoutesPath.MyHomePage);
            },
            leading: Icon(Icons.power_settings_new, color: Colors.black),
            title: Text(
              "Logout",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            onTap: () {
              //  Navigator.pushNamed(context, AppRoutesPath.MyHomePage);
            },
            leading: Image(
              image: NetworkImage(
                  'https://scontent.fdac10-1.fna.fbcdn.net/v/t1.6435-9/67098597_2316650961749691_3340644314656014336_n.jpg?_nc_cat=106&ccb=1-5&_nc_sid=730e14&_nc_eui2=AeHxx5ys1BMyomMnqnpB40hS2kFLP1xys4jaQUs_XHKziLslwlSltW655WNWMQ0xm0ivKiKd_BGaDkyidwjBLKOf&_nc_ohc=daAuoNevNNEAX969QGA&_nc_ht=scontent.fdac10-1.fna&oh=00_AT8IrIm4N71aJVGYWV2Pt8SMX6dxaEJRterAEhMWRarHXQ&oe=6219EB75'),
            ),
            title: Text(
              "Devolved by Shohag",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            subtitle: Text('probashistore@gmail.com'),
          ),
        ]),
      ),
      appBar: AppBar(
        title: Text('Insaf Multiparpas Kachaite'),
        actions: [
          Image.network(
              'https://scontent.fdac10-1.fna.fbcdn.net/v/t1.6435-9/67098597_2316650961749691_3340644314656014336_n.jpg?_nc_cat=106&ccb=1-5&_nc_sid=730e14&_nc_eui2=AeHxx5ys1BMyomMnqnpB40hS2kFLP1xys4jaQUs_XHKziLslwlSltW655WNWMQ0xm0ivKiKd_BGaDkyidwjBLKOf&_nc_ohc=daAuoNevNNEAX969QGA&_nc_ht=scontent.fdac10-1.fna&oh=00_AT8IrIm4N71aJVGYWV2Pt8SMX6dxaEJRterAEhMWRarHXQ&oe=6219EB75')
        ],
        centerTitle: true,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.cyanAccent.shade100,
        child: SingleChildScrollView(
          child: Column(
            children: [
              CarouselSlider(
                options: CarouselOptions(
                    height: 200.0,
                    autoPlay: true,
                    onPageChanged: (index, reason) {
                      setState(() {
                        chingIndex = index;
                      });
                    },
                    autoPlayAnimationDuration: Duration(seconds: 3),
                    autoPlayCurve: Curves.fastOutSlowIn),
                items: imagList
                    .map(
                      (e) => Container(
                        margin: EdgeInsets.all(05.0),
                        child: Stack(
                          children: [
                            CachedNetworkImage(
                              imageUrl: '$e',
                              fit: BoxFit.cover,
                              placeholder: (context, url) =>
                                  CircularProgressIndicator(),
                              errorWidget: (context, url, error) =>
                                  Icon(Icons.error),
                            ),
                            Positioned(
                              child: Chip(
                                  label: Text(
                                      '${chingIndex + 1} / ${imagList.length}')),
                              bottom: 10.0,
                              left: 100,
                            )
                          ],
                        ),
                      ),
                    )
                    .toList(),
              ),
              InsafLogo(),
              SizedBox(height: 10.0),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  controller: namecount,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), label: Text('User Name / Email')),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  controller: passcount,
                  obscureText: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), label: Text('Password')),
                ),
              ),
              ElevatedButton(
                  onPressed: () async {
                    if (await MyHelper.checkConnectivityState()) {
                      try {
                        final user = await auth.signInWithEmailAndPassword(
                            email: namecount.text.toString(),
                            password: passcount.text.toString().trim());
                        if (user != null) {
                          Navigator.pushNamed(context, AppRoutesPath.MainPage);
                        }
                      } on FirebaseAuthException catch (error) {
                        print(error.message);
                        final snackBar =
                            SnackBar(content: Text('${error.message}'));

                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      }
                    } else {
                      final snackBar =
                          SnackBar(content: Text('Plz Connect Internet'));

                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    }
                  },
                  child: Text('Login')),
              SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('You have no ID?'),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, AppRoutesPath.SignUpPage);
                    },
                    child: Text('SignUp'),
                    style:
                        TextButton.styleFrom(backgroundColor: Colors.white10),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
