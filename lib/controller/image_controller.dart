import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:get/get.dart';
class ProfileSetupController extends GetxController{

  File?pickedImage;



  Future pickimageFromGallery() async{

    try{
     final image= await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image==null)return;
      print('Temp${image.path}');
     final tempImage = File(image.path);
     pickedImage=tempImage;
     update();
     print(pickedImage!.path);

    }catch(e){
     print('Error is ${e.toString()}');
    }

  }

  Future pickimageFromCamera() async{

    try{
      final image= await ImagePicker().pickImage(source: ImageSource.camera);
      if (image==null)return;
      print('Temp${image.path}');
      final tempImage = File(image.path);
      pickedImage=tempImage;
      update();
      print(pickedImage!.path);

    }catch(e){
      print('Error is ${e.toString()}');
    }

  }


}