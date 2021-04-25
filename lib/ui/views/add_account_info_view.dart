import 'package:flutter/material.dart';
import 'package:vaulty/ui/shared/responsive_widget.dart';

class AddAccountInfo extends StatefulWidget {
  @override
  _AddAccountInfoState createState() => _AddAccountInfoState();
}

class _AddAccountInfoState extends State<AddAccountInfo> {
  late List<TextEditingController> _controllers;

  @override
  void initState() {
    super.initState();
    _controllers = List<TextEditingController>.generate(
        5, (index) => TextEditingController());
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
        appBar: AppBar(
          title: Text('Add app'),
        ),
        builder: (context, size) {
          return Container(
              height: size.height,
              width: size.width,
              child: ListView(
                children: [
                  //app name field
                  TextFormField(
                    controller: _controllers[0],
                  ),
                ],
              ));
        });
  }
}
