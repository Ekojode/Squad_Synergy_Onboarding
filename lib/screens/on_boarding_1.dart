import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:synergy_quad_interview/utilities/colors.dart';
import 'package:synergy_quad_interview/utilities/dimensions.dart';
import 'package:synergy_quad_interview/widgets/onboarding_widget.dart';

class OnBoarding1 extends StatefulWidget {
  const OnBoarding1({super.key});

  @override
  State<OnBoarding1> createState() => _OnBoarding1State();
}

class _OnBoarding1State extends State<OnBoarding1> {
  final pageController = PageController();

  void goToNext() {
    pageController.nextPage(
        duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kLightBlackColor,
      body: Stack(
        alignment: Alignment.center,
        children: [
          PageView(
            controller: pageController,
            children: [
              Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/onboarding/onboarding_1.png"),
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                        alignment: Alignment.bottomCenter,
                        height: height(context) / 2,
                        child: Image.asset("assets/images/Component 9.png")),
                    SizedBox(
                      width: width(context),
                      height: height(context) * 0.1,
                    ),
                    Text(
                      "COMENZÁ A VIVIR TU",
                      style: GoogleFonts.rubik(
                          fontSize: 20,
                          color: kWhiteColor,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      width: width(context),
                      height: height(context) * 0.02,
                    ),
                    Text("NT EXPERIENCE",
                        style: GoogleFonts.rubik(
                            fontSize: 40,
                            color: kPrimaryColor,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w700)),
                    const Spacer(),
                    GestureDetector(
                      onTap: () {
                        goToNext();
                      },
                      child: Container(
                        height: height(context) * 0.1,
                        width: width(context),
                        color: kBlackColor,
                        alignment: Alignment.center,
                        child: Container(
                            alignment: Alignment.center,
                            height: height(context) * 0.05,
                            width: width(context) * 0.75,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: kPrimaryColor),
                            child: Text(
                              "INICIAR SESIÓN",
                              style: GoogleFonts.rubik(
                                  fontSize: 20, fontWeight: FontWeight.w500),
                            )),
                      ),
                    ),
                  ],
                ),
              ),
              OnBoardingWidget(
                onTap: () {
                  goToNext();
                },
                image: "assets/onboarding/onboarding_2.png",
                header: "CONECTA",
                content:
                    "Conecta tus neuro sensores a la aplicación  Neural Trainer y comienza a aumentar tu rendimiento cognitivo.",
              ),
              OnBoardingWidget(
                onTap: () {
                  goToNext();
                },
                image: "assets/onboarding/onboarding_3.png",
                header: "ENTRENA",
                content:
                    "Selecciona una actividad creada por el equipo de Neural Trainer o crea tu propio entrenamiento específico.",
              ),
              OnBoardingWidget(
                onTap: () {
                  goToNext();
                },
                image: "assets/onboarding/onboarding_4.png",
                header: "ANALIZA",
                content:
                    "Monitorea el desempeño de tus atletas, registra sus resultados y compártelos en tiempo real.",
              ),
            ],
          ),
          Positioned(
            top: height(context) * 0.85,
            child: Center(
              child: SmoothPageIndicator(
                  effect: const WormEffect(
                      spacing: 12,
                      dotColor: kPrimaryColor,
                      activeDotColor: kLightBlackColor),
                  controller: pageController,
                  count: 4),
            ),
          )
        ],
      ),
    );
  }
}
