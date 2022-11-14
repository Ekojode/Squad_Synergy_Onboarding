import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:synergy_quad_interview/utilities/colors.dart';
import 'package:synergy_quad_interview/utilities/dimensions.dart';

class OnBoardingWidget extends StatelessWidget {
  final String image;
  final String header;
  final String content;
  final Function()? onTap;
  const OnBoardingWidget(
      {super.key,
      required this.image,
      required this.header,
      required this.content,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height(context),
      width: width(context),
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(image),
        ),
      ),
      child: Column(
        children: [
          SizedBox(
            height: height(context) * 0.15,
            width: width(context),
          ),
          SizedBox(
            height: height(context) * 0.075,
            child: Text(
              "#MOVEYOURMIND",
              style: GoogleFonts.rubik(
                  fontSize: 20,
                  color: kLightWhite,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w700),
            ),
          ),
          SizedBox(height: height(context) * 0.35),
          Container(
            alignment: Alignment.center,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [0.5, 0.9],
                    colors: [Color(0xff1f2021), kBlackColor])),
            height: height(context) * 0.05,
            width: width(context),
            child: Text(header,
                style: GoogleFonts.rubik(
                    fontSize: 40,
                    color: kPrimaryColor,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w700)),
          ),
          Container(color: kBlackColor, height: height(context) * 0.03),
          Container(
            height: height(context) * 0.075,
            color: kBlackColor,
            child: Text(content,
                textAlign: TextAlign.center,
                style: GoogleFonts.rubik(
                    fontSize: 16,
                    color: kWhiteColor,
                    fontWeight: FontWeight.w400)),
          ),
          Container(
            color: kBlackColor,
            height: height(context) * 0.17,
          ),
          // const Spacer(),
          GestureDetector(
            onTap: onTap,
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
          )
        ],
      ),
    );
  }
}
