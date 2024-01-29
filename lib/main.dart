import 'package:crud_localdb/controller/binding.dart';
import 'package:crud_localdb/controller/home.dart';
import 'package:crud_localdb/create/bindingsCreate.dart';
import 'package:crud_localdb/db/db_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'create/create.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DbHelper.initDb();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
     initialRoute: "/",
      initialBinding: HomeBindings(),
      getPages: [
        GetPage(
          name: "/", page: () => const HomePage(), binding: HomeBindings()),
        GetPage(
            name: "/create", page: () => const createPage(), binding: createBinding()),
      ],
    );
  }
}

