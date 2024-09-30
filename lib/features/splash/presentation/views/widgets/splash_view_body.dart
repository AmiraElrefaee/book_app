import 'package:book_application/features/splash/presentation/views/widgets/sliding_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../../core/utils/asset_data.dart';
import '../../../../home/presentation/views/home_view.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>with SingleTickerProviderStateMixin{
  late AnimationController animationController;
  late Animation<Offset> SlidingAnimation;
  @override
  void initState() {

    initSlidingAnimation();
    super.initState();
    NavigateT0Home();
  }




  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    animationController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
        const SizedBox(
          height: 7,
        ),
        SlidingText(SlidingAnimation: SlidingAnimation),
      ],
    );
  }
  void initSlidingAnimation() {
    animationController= AnimationController(
        vsync: this ,
        duration:const Duration(seconds: 1));
    SlidingAnimation= Tween<Offset>
      (begin: const Offset(0, 5) ,end:Offset.zero ).animate(animationController);

    animationController.forward();
  }
  void NavigateT0Home() {
    Future.delayed(const Duration(seconds: 2),(){
      Get.to(()=> const HomeView(), transition: Transition.fade);
    });
  }
}