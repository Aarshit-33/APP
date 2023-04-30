import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:convert';

class Users {
  String id;
  String name;
  String phone ;

  Users({
    this.id = '',
    required this.name,
    required this.phone,

});

  static Users fromJson(Map<String, dynamic> json) => Users(
  id: json["id"],
  name: json["name"],
  phone: json["phone"],
  );

  Map<String , dynamic> toJson() => {
    "id": id,
  "name": name,
  "phone": phone
  };

}

Future createUser(String name, String phone) async {
  print("in");
  final docUser = FirebaseFirestore.instance.collection("user_details").doc();
  print(docUser);
  final user = Users(id: docUser.id,name: name, phone: phone);
  final json = user.toJson();
  await docUser.set(json);
  print("user created !!");
}
