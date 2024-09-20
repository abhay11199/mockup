import 'package:flutter/material.dart';
import 'package:mockup/constants/app_config.dart';

class CommonListTile extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;

  const CommonListTile({
    Key? key,
    required this.image,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppConfig appConfig = AppConfig(context);
    return ListTile(
      leading: Image.asset(
        image,
        height: appConfig.deviceHeight(5),
      ),
      title: Text(
        title,
        style: const TextStyle(
            fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
      ),
      subtitle: Text(
        subtitle,
        style: const TextStyle(
          fontSize: 14,
          color: Colors.grey,
        ),
      ),
    );
  }
}
