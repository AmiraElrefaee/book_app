import 'package:flutter/cupertino.dart';

class CutsomFadingWodget extends StatefulWidget {
  const CutsomFadingWodget({super.key, required this.child});
  final Widget child;
  @override
  State<CutsomFadingWodget> createState() => _CutsomFadingWodgetState();
}

class _CutsomFadingWodgetState extends State<CutsomFadingWodget>
    with SingleTickerProviderStateMixin {
  @override
  late Animation animation;
  late AnimationController animationController;
  @override
  void initState() {
    // TODO: implement initState
    animationController= AnimationController(vsync: this, duration: Duration(milliseconds: 1000));
    animation=Tween<double>(begin:.6 ,end:.9 ).animate(animationController);
 animationController.addListener((){

   setState(() {

   });
 });
 animationController.repeat(reverse: true);
    super.initState();
  }
  Widget build(BuildContext context) {
    return Opacity(opacity: animation.value,
    child: widget.child,
    );
  }
}
