import 'package:flutter/material.dart';

import '../../resourse/app_colors.dart';

class TitleText extends StatefulWidget {
  const TitleText({super.key, required this.text, this.textColor = AppColors.black});

  final String text;
  final Color? textColor;

  @override
  State<TitleText> createState() => _TitleTextState();
}

class _TitleTextState extends State<TitleText> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.text,
      style: Theme.of(context).textTheme.headlineLarge?.copyWith(color: AppColors.black, fontWeight: FontWeight.w700),
      textAlign: TextAlign.start,
    );
  }
}
