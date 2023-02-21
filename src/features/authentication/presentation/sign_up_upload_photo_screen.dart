import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:sarang_app/src/common_widget/custom_button_widget.dart';
import 'package:sarang_app/src/common_widget/custom_text_button_widget.dart';
import 'package:sarang_app/src/common_widget/logo_and_tagline_widget.dart';
import 'package:sarang_app/src/common_widget/upload_photo_widget.dart';
import 'package:sarang_app/src/theme_manager/style_manager.dart';

class SignUpUploadPhotoScreen extends StatefulWidget {
  static const String routeName = '/sign-up-upload-photo';
  const SignUpUploadPhotoScreen({super.key});

  @override
  State<SignUpUploadPhotoScreen> createState() =>
      _SignUpUploadPhotoScreenState();
}

class _SignUpUploadPhotoScreenState extends State<SignUpUploadPhotoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 50.0,
          horizontal: 24.0,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              LogoAndTaglineWidget(),
              SizedBox(
                height: 50.0,
              ),
              UploadPhotoWidget(),
              SizedBox(
                height: 53.0,
              ),
              Text(
                'Andi Mania ',
                style: getWhiteTextstyle(
                    fontSize: 22.0, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 4.0,
              ),
              Text(
                '22, Lawyer',
                style: getBlack60Textstyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 240.0,
              ),
              CustomButtonWidget(title: 'Update My Profile', onTap: () {}),
              SizedBox(
                height: 20.0,
              ),
              CustomTextButtonWidget(title: 'Skip for Now', onPressed: () {})
            ],
          ),
        ),
      ),
    );
  }
}
