import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'menu2.dart';
import 'initmenu.dart';

class listpantai extends StatelessWidget {
  const listpantai({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference pantai = firestore.collection('pantai');
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 32,
            horizontal: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hello',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              Text(
                'Mau Kemana Hari ini ?',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 22),
              StreamBuilder<QuerySnapshot>(
                  stream: pantai.orderBy('id', descending: false).snapshots(),
                  builder: (_, snapshot) {
                    if (snapshot.hasData) {
                      return Column(
                        children: (snapshot.data! as QuerySnapshot)
                            .docs
                            .map(
                              (e) => MenuCard2(
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
      ),
    );
  }
}
