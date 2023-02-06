import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'initdetail.dart';
import 'detail.dart';
import 'home_screen.dart';
import 'menu.dart';
import 'initmenu.dart';

class Pantai extends StatelessWidget {
  const Pantai(int index, {Key? key}) : super(key: key);

  Object get index => index;

  @override
  Widget build(BuildContext context) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference gunung = firestore.collection('gunung');
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            const SizedBox(height: 22),
            StreamBuilder<QuerySnapshot>(
                stream: gunung.orderBy('id', descending: false).snapshots(),
                builder: (_, snapshot) {
                  if (snapshot.hasData == index) {
                    return Column(
                      children: (snapshot.data! as QuerySnapshot)
                          .docs
                          .map(
                            (e) => MenuCard(
                              Menu(
                                id: e['id'],
                                image: e['image'],
                                name: e['name'],
                                kota: e['kota'],
                                note: e['note'],
                                provinsi: e['provinsi'],
                              ),
                            ),
                          )
                          .toList(),
                    );
                  } else {
                    return Center(child: CircularProgressIndicator());
                  }
                }),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
