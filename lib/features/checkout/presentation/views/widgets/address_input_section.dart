import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/core/widgets/custom_text_field.dart';

import '../../../domain/entites/order_entity.dart';

class AddressInputSection extends StatelessWidget {
  const AddressInputSection({super.key, required this.formKey});

  final GlobalKey<FormState> formKey;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 24,
          ),
          CustomTextFormField(
            onSaved: (value) {
              context.read<OrderEntity>().shippingAddressEntity!.name = value!;
            },
            hintText: 'الاسم كامل',
            textInputType: TextInputType.text,
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextFormField(
            onSaved: (value) {
              context.read<OrderEntity>().shippingAddressEntity!.email = value!;
            },
            hintText: 'البريد الإلكتروني',
            textInputType: TextInputType.text,
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextFormField(
            onSaved: (value) {
              context.read<OrderEntity>().shippingAddressEntity!.address =
                  value!;
            },
            hintText: 'العنوان',
            textInputType: TextInputType.text,
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextFormField(
            onSaved: (value) {
              context.read<OrderEntity>().shippingAddressEntity!.city = value!;
            },
            hintText: 'المدينه',
            textInputType: TextInputType.text,
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextFormField(
            onSaved: (value) {
              context.read<OrderEntity>().shippingAddressEntity!.floor = value!;
            },
            hintText: 'رقم الطابق , رقم الشقه ..',
            textInputType: TextInputType.text,
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextFormField(
            onSaved: (value) {
              context.read<OrderEntity>().shippingAddressEntity!.phone = value!;
            },
            hintText: 'رقم الهاتف',
            textInputType: TextInputType.number,
          ),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
