import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

Future<void> addstudent({
  required String username,
  required String email,
  required String phonenumber,
  required BuildContext context,
}) async {
  try {
    await FirebaseFirestore.instance.collection("Students").add({
      "Username": username,
      "Email": email,
      "phonenumber": phonenumber,
    });
    Navigator.pop(context);
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text("Student Data Added")));
  } catch (e) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(e.toString())));
  }
}

Stream<QuerySnapshot> fetchstudents() {
  return FirebaseFirestore.instance.collection("Students").snapshots();
}

Future<void> deletestudent(String id, BuildContext context) async {
  try {
    await FirebaseFirestore.instance.collection("Students").doc(id).delete();
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text("Deleted successfully")));
  } catch (e) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(e.toString())));
  }
}

Future<void> update(
  String id,
  String username,
  String email,
  String phonenumber,
  BuildContext context,
) async {
  try {
    await FirebaseFirestore.instance.collection("Students").doc(id).update({
      "Username": username,
      "Email": email,
      "phonenumber": phonenumber,
    });
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text("updated successfully")));
  } catch (e) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(e.toString())));
  }
}
