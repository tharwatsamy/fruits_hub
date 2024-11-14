import 'package:flutter/material.dart';
import 'package:fruits_hub/core/widgets/custom_text_field.dart';

class AddressInputSection extends StatelessWidget {
  const AddressInputSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 24,
          ),
          CustomTextFormField(
            hintText: 'الاسم كامل',
            textInputType: TextInputType.text,
          ),
          SizedBox(
            height: 16,
          ),
          CustomTextFormField(
            hintText: 'البريد الإلكتروني',
            textInputType: TextInputType.text,
          ),
          SizedBox(
            height: 16,
          ),
          CustomTextFormField(
            hintText: 'العنوان',
            textInputType: TextInputType.text,
          ),
          SizedBox(
            height: 16,
          ),
          CustomTextFormField(
            hintText: 'المدينه',
            textInputType: TextInputType.text,
          ),
          SizedBox(
            height: 16,
          ),
          CustomTextFormField(
            hintText: 'رقم الطابق , رقم الشقه ..',
            textInputType: TextInputType.text,
          ),
          SizedBox(
            height: 16,
          ),
          CustomTextFormField(
            hintText: 'رقم الهاتف',
            textInputType: TextInputType.number,
          ),
          SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
