import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:email_password_login/model/shared_preference.dart';
import 'package:email_password_login/model/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'login_screen.dart';
import 'listgunung.dart';
import 'listpantai.dart';
import 'settings.dart';
import 'editprofile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  User? user = FirebaseAuth.instance.currentUser;
  UserModel loggedInUser = UserModel();

  PrefService _prefService = PrefService();

  Future<bool?> _onBackPressed() async {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Do you want to exit?'),
            actions: <Widget>[
              TextButton(
                child: Text('No'),
                onPressed: () {
                  Navigator.of(context).pop(false);
                },
              ),
              TextButton(
                child: Text('Yes'),
                onPressed: () {
                  Navigator.of(context).pop(true);
                  SystemNavigator.pop();
                },
              ),
            ],
          );
        });
  }

  final Stream<QuerySnapshot>users=
    FirebaseFirestore.instance.collection('users').snapshots();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Travelaja"),
        backgroundColor: Colors.blueAccent,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: Icon(Icons.search),
          ),
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: PopupMenuButton<int>(
              onSelected: (item) => onSelected(context, item),
              itemBuilder: (context) => [
                PopupMenuItem<int>(
                  value: 0,
                  child: Text('Profile'),
                ),
                PopupMenuItem<int>(
                  value: 1,
                  child: Text('Setting'),
                ),
                PopupMenuItem<int>(
                  child: GestureDetector(
                    onTap: () {
                      FirebaseAuth.instance.signOut();
                    },
                    child: Text('Sign Out'),
                  ),
                ),
                PopupMenuItem<int>(
                  child: GestureDetector(
                    onTap: () {
                      FirebaseAuth.instance.currentUser?.delete();
                    },
                    child: Text('Delete Account'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 100),
        child: GridView.count(
            padding: const EdgeInsets.all(20),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
            children: <Widget>[
              Card(
                color: Colors.blue,
                elevation: 8,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(28)),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: InkWell(
                  splashColor: Colors.black26,
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const listpantai()));
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Ink.image(
                        image: AssetImage('assets/pantai.png'),
                        height: 130,
                        width: 160,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(height: 6),
                      Text(
                        'Pantai',
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                      SizedBox(height: 6),
                    ],
                    textDirection: TextDirection.ltr,
                  ),
                ),
              ),
              Card(
                color: Colors.blue,
                elevation: 8,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(28)),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: InkWell(
                  splashColor: Colors.black26,
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const listGunung()));
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Ink.image(
                        image: AssetImage('assets/gunung.jpg'),
                        height: 130,
                        width: 160,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(height: 6),
                      Text(
                        'Gunung',
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                      SizedBox(height: 6),
                    ],
                    textDirection: TextDirection.ltr,
                  ),
                ),
              ),
            ]),
      ),
    );
  }

  void onSelected(BuildContext context, int item) {
    switch (item) {
      case 0:
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => SettingsUI()),
        );
        break;
      case 1:
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => SettingsPage()),
        );
        break;
    }
  }

  // the logout function
  Future<void> logout(BuildContext context) async {
    await FirebaseAuth.instance.signOut();
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => LoginScreen()));
  }
}
