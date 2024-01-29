import 'package:crud_localdb/models/note.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class CreateConttoller extends GetxController {
  var titleController = TextEditingController();
  var contentController = TextEditingController();
  Note? oldNote;

  @override
  void onInit() {
    super.onInit();

    oldNote = Get.arguments as Note?;

    if (oldNote != null) {
      titleController.text = oldNote!.title;
      contentController.text = oldNote!.content;
    }
  }

  void onSubmit() {
    if (titleController.text.trim().isNotEmpty &&
        contentController.text.trim().isNotEmpty) {
      Get.back(
          result: Note(
              title: titleController.text,
              content: contentController.text,
              id: oldNote?.id));
    }
  }
}
