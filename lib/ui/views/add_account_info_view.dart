import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vaulty/ui/shared/button.dart';
import 'package:vaulty/ui/shared/custom_form_field.dart';
import 'package:vaulty/ui/shared/responsive_widget.dart';
import 'package:vaulty/ui/shared/vertical_spacer.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vaulty/ui/shared/extensions.dart';

class AddAccountInfoView extends StatefulWidget {
  @override
  _AddAccountInfoViewState createState() => _AddAccountInfoViewState();
}

class _AddAccountInfoViewState extends State<AddAccountInfoView> {
  late List<TextEditingController> _controllers;
  late List<FocusNode> _focusNodes;
  late GlobalKey<FormState> _formKey;

  @override
  void initState() {
    super.initState();
    _formKey = GlobalKey<FormState>();
    _controllers = List<TextEditingController>.generate(
        5, (index) => TextEditingController());
    _focusNodes = List<FocusNode>.generate(5, (index) => FocusNode());
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
        appBar: AppBar(
          leading: IconButton(
              icon: Icon(
                Icons.keyboard_backspace,
                color: Theme.of(context).primaryColorDark,
              ),
              onPressed: () {
                Get.back();
              }),
          title: Text('Add new account'),
        ),
        builder: (context, size) {
          return Form(
            key: _formKey,
            child: Container(
                height: size.height,
                width: size.width,
                child: ListView(
                  children: [
                    VerticalSpacer(flex: 5),

                    Text('* Required field',
                            style: TextStyle(
                                fontSize: 15.sp,
                                color: Theme.of(context).highlightColor))
                        .pad,

                    VerticalSpacer(flex: 2),

                    //app name field
                    CustomFormField(
                      controller: _controllers[0],
                      focus: _focusNodes[0],
                      hintText: 'App name*',
                      prefixIcon: Icons.widgets_rounded,
                      validator: (String data) {
                        if (data != 'Hi') {
                          print(data);
                          return 'Field cannot be empty';
                        }
                      },
                    ),

                    VerticalSpacer(flex: 2),

                    //website url field
                    CustomFormField(
                      controller: _controllers[1],
                      focus: _focusNodes[1],
                      hintText: 'Website url',
                      prefixIcon: Icons.web_rounded,
                    ),

                    VerticalSpacer(flex: 2),

                    //account email field
                    CustomFormField(
                      controller: _controllers[2],
                      focus: _focusNodes[2],
                      hintText: 'Email',
                      prefixIcon: Icons.alternate_email_rounded,
                    ),

                    VerticalSpacer(flex: 2),

                    //account user name field
                    CustomFormField(
                      controller: _controllers[3],
                      focus: _focusNodes[3],
                      hintText: 'User name',
                      prefixIcon: Icons.person_outline_rounded,
                    ),

                    VerticalSpacer(flex: 2),

                    //account password field
                    CustomFormField(
                      controller: _controllers[4],
                      focus: _focusNodes[4],
                      hintText: 'Password*',
                      prefixIcon: Icons.lock_outline_rounded,
                      validator: (String data) {
                        if (data.isEmpty) {
                          return 'Field cannot be empty';
                        }
                      },
                    ),

                    VerticalSpacer(flex: 5),

                    CustomButton(
                      padding: 20,
                      text: 'Add account',
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          print('Validated');
                        }
                      },
                    ),
                  ],
                )),
          );
        });
  }
}
