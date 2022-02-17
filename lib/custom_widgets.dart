import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  String? title;
  Widget leading;
  Widget? trailing;
  bool? enabled;

  CustomListTile({
    Key? key,
    required this.title,
    required this.leading,
    this.trailing,
    this.enabled,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: trailing,
      title: Text(title!),
      leading: leading,
      enabled: true,
    );
  }
}
