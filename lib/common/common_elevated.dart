import 'package:flutter/material.dart';
import 'package:mockup/constants/app_config.dart';

class CommonElevatedButton extends StatelessWidget {
  final String buttonText;
  final String? image;
  final Color backgroundColor;
  final Color? textColor;
  final Color? borderColor;
  final double? width;
  final double? height;
  final VoidCallback onPressed;

  const CommonElevatedButton({
    Key? key,
    required this.buttonText,
    this.image,
    required this.backgroundColor,
    this.textColor,
    this.borderColor,
    this.width,
    this.height,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppConfig appConfig = AppConfig(context);

    return SizedBox(
      width: width ?? double.infinity,
      height: height ?? appConfig.deviceHeight(6),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
            side: BorderSide(
              color: borderColor ?? Colors.transparent,
            ),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (image != null && image!.isNotEmpty)
              Image.asset(
                image!,
                width: appConfig.deviceHeight(5),
                height: appConfig.deviceWidth(5),
              ),
            if (image != null && image!.isNotEmpty)
              SizedBox(width: appConfig.deviceWidth(2)),
            Text(
              buttonText,
              style: TextStyle(
                color: textColor ?? Colors.black,
                fontSize: appConfig.textSizeScale(15),
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
