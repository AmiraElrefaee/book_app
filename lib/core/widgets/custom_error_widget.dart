import 'package:book_application/core/utils/styles.dart';
import 'package:flutter/cupertino.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({super.key, required this.errorMessage});
final String errorMessage;

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(errorMessage, style: Styles.textStyle16,
    textAlign:  TextAlign.center,
    ));
  }
}
