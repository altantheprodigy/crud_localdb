import 'package:crud_localdb/controller/controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: controller.createNote,
          child: Icon(Icons.add),
        ),
        appBar: AppBar(
          title: Text("Home"),
        ),
        body: SafeArea(
          child: Obx(() => controller.isLoading.value
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : ListView.builder(
                  itemCount: controller.notes.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(controller.notes[index].title),
                      subtitle: Text(controller.notes[index].content),
                      trailing: PopupMenuButton(
                        itemBuilder: (BuildContext context) => [
                          PopupMenuItem(
                            child: Text("Edit"),
                            onTap: () => controller.updateNote(index),
                          ),
                          PopupMenuItem(
                            child: Text("Delete"),
                            onTap: () => controller
                                .deleteNote(controller.notes[index].id!),
                          )
                        ],
                      ),
                    );
                  })),
        ));
  }
}
