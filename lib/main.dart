// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Hussien Mostafa",
      theme: ThemeData(
        //appBarTheme: AppBarTheme(color: Colors.teal),
        primaryColor: Colors.blueGrey,
        accentColor: Colors.teal,
      ),
      home: Home(),
      debugShowCheckedModeBanner: false,
      //debugShowCheckedModeBanner: false,
    );
  }
}

void _launchURL(_url) async =>
    await canLaunch(_url) ? await launch(_url) : throw 'Could not launch $_url';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              CircleAvatar(
                radius: 60,
                backgroundColor: Colors.brown,
                backgroundImage: AssetImage("assets/images/p.jpg"),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                //padding: const EdgeInsets.only(top: 10.0, right: 20),
                child: Text(
                  "Hussien Mostafa",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "Flutter Developer",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
              ContactCard(
                contact: '01157421059',
                url: 'tel:+201157421059',
                icon: Icon(
                  Icons.phone,
                  color: Colors.black,
                  size: 30,
                ),
              ),
              ContactCard(
                contact: 'hussienmostafa8888@gmail.com',
                url:
                    'mailto:hussienmostafa8888@gmail.com?subject=Flutter&body=i solve problem',
                icon: Icon(
                  Icons.email,
                  color: Colors.black,
                  size: 30,
                ),
              ),
              ContactCard(
                contact: 'HussienMostafa',
                url: 'https://www.facebook.com/profile.php?id=100009163527705',
                icon: Icon(
                  EvaIcons.facebook,
                  color: Colors.black,
                  size: 30,
                ),
              ),
              ContactCard(
                contact: '01157421059',
                url: 'sms:+201157421059',
                icon: Icon(
                  Icons.sms,
                  color: Colors.black,
                  size: 30,
                ),
              ),
              ContactCard(
                contact: 'my profile in github',
                url: 'https://github.com/Hussien12Mostafa',
                icon: Icon(
                  EvaIcons.github,
                  color: Colors.black,
                  size: 30,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ContactCard extends StatelessWidget {
  final String contact;
  final String url;
  final dynamic icon;
  const ContactCard(
      {Key? key, required this.contact, required this.url, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      color: Colors.blueGrey,
      child: ListTile(
        onTap: () {
          _launchURL(url);
        },
        leading: icon,
        title: Text(
          contact,
          style: TextStyle(fontSize: 25, color: Colors.white),
        ),
      ),
    );
  }
}
