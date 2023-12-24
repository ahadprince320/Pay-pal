import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pay_pal/controller/image_controller.dart';
import 'package:pay_pal/style/app_bar/custrom_appBar.dart';

import '../style/custrom_button/custrom_button.dart';
import '../style/custrom_textForm/text_from_field.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  ProfileSetupController profileSetupController =
      Get.put(ProfileSetupController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: custromAppbar(title: 'Complete Setup', context: context),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Center(child: GetBuilder<ProfileSetupController>(
                builder: (controller) {
                  return Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      profileSetupController.pickedImage == null
                          ? CircleAvatar(
                              radius: 60,
                              backgroundImage: NetworkImage(
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDtAJSO01-u8cV6hUbdBn1WIEqd1pQURT_WydQXKGejZqmk1U4UoKybT_llB0gcT6niYU&usqp=CAU'))
                          : CircleAvatar(
                              radius: 60,
                              backgroundImage: FileImage(
                                  profileSetupController.pickedImage!),
                            ),
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          border: Border.all(width: 2, color: Colors.white),
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.blue,
                        ),
                        child: InkWell(
                            onTap: () {
                              _showImagePicker(context);
                              print('button pressed');
                            },
                            child: Icon(Icons.edit,
                                color: Colors.white, size: 20)),
                      ),
                    ],
                  );
                },
              )),
              SizedBox(
                height: 55,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextFromField(hintText: 'Your Full NAme'),
                  SizedBox(
                    height: 10,
                  ),
                  TextFromField(hintText: 'Your Phone Number'),
                  SizedBox(
                    height: 10,
                  ),
                  TextFromField(hintText: 'Your pin Number'),
                  SizedBox(
                    height: 5,
                  ),
                ],
              ),
              Container(
                height: 130,
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CustromButtom(
                      onPressed: () {},
                      name: 'Computer Setup',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _showImagePicker(BuildContext context) {
    showModalBottomSheet(
      elevation: 10.0,
      context: context,
      builder: (_) {
        return Padding(
          padding: const EdgeInsets.all(20.0),
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 4,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    profileSetupController.pickimageFromGallery();
                  },
                  child: Column(
                    children: [
                      Icon(Icons.image, size: 70),
                      Text('Gallary'),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    profileSetupController.pickimageFromCamera();
                  },
                  child: Column(
                    children: [
                      Icon(Icons.camera_alt, size: 70),
                      Text('Camara'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
