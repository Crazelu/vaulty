import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vaulty/ui/shared/layout.dart';
import 'package:vaulty/ui/shared/extensions.dart';

class CustomFormField extends StatelessWidget {
  final IconData? searchIcon;
  final IconData? prefixIcon;
  final Function? onSearch;
  final Function(String)? validator;
  final TextEditingController? controller;
  final FocusNode? focus;
  final String hintText;

  const CustomFormField(
      {Key? key,
      this.searchIcon,
      this.prefixIcon,
      this.onSearch,
      this.validator,
      this.controller,
      this.focus,
      this.hintText: ''})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return LayoutWidget(builder: (context, size) {
      return Center(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          height: 60.h,
          width: size.width,
          decoration: BoxDecoration(
              color: Theme.of(context).shadowColor,
              borderRadius: BorderRadius.circular(15.h)),
          child: TextFormField(
            controller: controller,
            focusNode: focus,
            validator: (String? data) {
              if (validator != null) validator!(data ?? '');
            },
            decoration: InputDecoration(
              hintText: hintText,
              prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
              suffixIcon: searchIcon == null
                  ? null
                  : IconButton(
                      icon: Icon(
                        searchIcon,
                        color: Theme.of(context).hintColor,
                      ),
                      onPressed: () {
                        if (onSearch != null) onSearch!();
                      },
                    ),
              enabledBorder: OutlineInputBorder(borderSide: BorderSide.none),
              focusedBorder: OutlineInputBorder(borderSide: BorderSide.none),
              disabledBorder: OutlineInputBorder(borderSide: BorderSide.none),
              errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Theme.of(context).errorColor,
                  ),
                  borderRadius: BorderRadius.circular(10.h)),
            ),
          ),
        ),
      ).pad;
    });
  }
}
