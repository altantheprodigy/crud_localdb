import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import 'controllerCreate.dart';

class createPage extends GetView<CreateConttoller> {
  const createPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
              controller: controller.titleController,
              decoration: InputDecoration(
                labelText: "Title",
                labelStyle: TextStyle(
                  color:
                      Colors.blue, // Ganti dengan warna label yang diinginkan
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors
                          .blueAccent), // Ganti dengan warna border yang diinginkan
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors
                          .blueAccent), // Ganti dengan warna border yang diinginkan saat focus
                ),
              ),
              style: TextStyle(
                color: Colors.black, // Ganti dengan warna teks yang diinginkan
              ),
            ),
            TextField(
              controller: controller.contentController,
              decoration: InputDecoration(
                labelText: "Title",
                labelStyle: TextStyle(
                  color:
                      Colors.blue, // Ganti dengan warna label yang diinginkan
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors
                          .blueAccent), // Ganti dengan warna border yang diinginkan
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors
                          .blueAccent), // Ganti dengan warna border yang diinginkan saat focus
                ),
              ),
              style: TextStyle(
                color: Colors.black, // Ganti dengan warna teks yang diinginkan
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: controller.onSubmit, child: Text("Submit"))
          ],
        ),
      ),
    );
  }
}
