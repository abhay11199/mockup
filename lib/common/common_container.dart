import 'package:flutter/material.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:mockup/constants/app_config.dart';

class CommonContainer extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  final String buttonText;
  final VoidCallback? onButtonPressed;
  final Color backgroundColor;

  const CommonContainer({
    Key? key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.buttonText,
    this.onButtonPressed,
    this.backgroundColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppConfig appConfig = AppConfig(context);
    return Container(
      height: appConfig.deviceHeight(30),
      width: appConfig.deviceWidth(45),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            blurRadius: 6,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        children: [
          Column(
            children: [
              Image.asset(
                image,
                width: appConfig.deviceHeight(8),
                height: appConfig.deviceHeight(8),
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: appConfig.deviceHeight(2),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      title,
                      style: TextStyle(fontSize: 18, color: Colors.grey),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      subtitle,
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: appConfig.deviceHeight(2),
          ),
          DottedLine(),
          SizedBox(
            height: appConfig.deviceHeight(2),
          ),
          Expanded(
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: onButtonPressed,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  elevation: 2,
                ),
                child: Text(
                  buttonText,
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
