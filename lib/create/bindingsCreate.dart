import 'package:crud_localdb/create/controllerCreate.dart';
import 'package:get/get.dart';

class createBinding extends Bindings{
  @override
  void dependencies(){
    Get.lazyPut(() => CreateConttoller());
  }
}