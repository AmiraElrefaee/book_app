import 'package:book_application/core/utils/styles.dart';
import 'package:flutter/cupertino.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({super.key, required this.errorMessage});
final String errorMessage;

  @override
  Widget build(BuildContext context) {
    return Text(errorMessage, style: Styles.textStyle18,);
  }
}
