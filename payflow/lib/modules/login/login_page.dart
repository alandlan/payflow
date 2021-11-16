
import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/app_colors.dart';
import 'package:payflow/shared/themes/app_images.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Container(
        width: size.width,
        height: size.height,
        child: Stack(
          children: [
            Container(
              width: size.width,
              height: size.height *0.36,
              color: AppColors.primary,
            ),
            Positioned(
              top: 40,
              left: 0, 
              right: 0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(AppImages.person,width: 208, height:373),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Image.asset(AppImages.logomini),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 60,right: 60),
                    child: Text("Organize seus boletos em um só lugar", textAlign: TextAlign.center, style: TextStyles.titleHome),
                  )
                ],
              )
            ),
            // Positioned(
            //   bottom: 200,
            //   left: 0,
            //   right: 0,
            //   child: Column(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     crossAxisAlignment: CrossAxisAlignment.center,
            //     children: [
            //       Image.asset(AppImages.logomini),
            //       Text("Organize seus boletos em um só lugar", style: TextStyles.titleHome)
            //     ],
                
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}