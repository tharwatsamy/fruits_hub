import 'package:flutter/material.dart';
import 'package:fruits_hub/constants.dart';
import 'package:fruits_hub/core/widgets/custom_text_field.dart';

class SignupViewBody extends StatelessWidget {
  const SignupViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: kHorizintalPadding),
        child: Column(
          children: [
            SizedBox(
              height: 24,
            ),
            CustomTextFormField(
                hintText: 'الاسم كامل', textInputType: TextInputType.name),
            SizedBox(
              height: 16,
            ),
            CustomTextFormField(
                hintText: 'البريد الإلكتروني',
                textInputType: TextInputType.emailAddress),
            SizedBox(
              height: 16,
            ),
            CustomTextFormField(
              suffixIcon: Icon(
                Icons.remove_red_eye,
                color: Color(0xffC9CECF),
              ),
              hintText: 'كلمة المرور',
              textInputType: TextInputType.visiblePassword,
            ),
          ],
        ),
      ),
    );
  }
}
