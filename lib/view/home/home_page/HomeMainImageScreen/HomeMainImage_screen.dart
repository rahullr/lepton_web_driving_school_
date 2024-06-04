import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lepton_new_web/view/widget/responsive/responsive.dart';

class HomeMainImageScreenWidget extends StatelessWidget {
  const HomeMainImageScreenWidget({
    super.key,
    required this.screenSize,
  });

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ResponsiveWebSite.isMobile(context) ? 600 : 1000,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assests/images/home_image_new.jpg'), fit: BoxFit.cover),
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: ResponsiveWebSite.isMobile(context)
              ? const EdgeInsets.only(bottom: 0, left: 0)
              : ResponsiveWebSite.isTablet(context)
                  ? const EdgeInsets.only(bottom: 0, left: 0)
                  : const EdgeInsets.only(bottom: 40, left: 200),
          child: ResponsiveWebSite.isMobile(context)
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: ResponsiveWebSite.isMobile(context) ? 300 : 500,
                      width: ResponsiveWebSite.isMobile(context) ? 300 : 500,
                      child: Center(
                        child: Image.asset(
                          'assests/images/leptonlogo.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                )
              : ResponsiveWebSite.isTablet(context)
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: ResponsiveWebSite.isTablet(context) ? 300 : 500,
                          width: ResponsiveWebSite.isTablet(context) ? 300 : 500,
                          child: Center(
                            child: Image.asset(
                              'assests/images/leptonlogo.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    )
                  : Padding(
                      padding: const EdgeInsets.only(top: 70, left: 200),
                      child: SizedBox(
                        // color: Colors.red,
                        height: ResponsiveWebSite.isMobile(context) ? 200 : 260,
                        width: ResponsiveWebSite.isMobile(context) ? 200 : 300,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 0),
                          child: Image.asset(
                            'assests/images/leptonlogo.png',
                          ),
                        ),
                      ),
                    ),
        ),
        ResponsiveWebSite.isDesktop(context)
            ? Padding(
                padding: const EdgeInsets.only(left: 180, bottom: 100),
                child: SizedBox(
                  height: 200,
                  // color: Colors.amber,
                  child: Row(
                    children: [
                      Text(
                        "Defending  Your  Rights,\n   Upholding  Your  trust",
                        style: GoogleFonts.castoroTitling(
                            color: const Color(0xFFCE8F2E), fontSize: screenSize.width / 36),
                      ),
                    ],
                  ),
                ),
              )
            : Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Defending  Your  Rights,\n   Upholding  Your  trust",
                      style: GoogleFonts.castoroTitling(
                          color: const Color(0xFFCE8F2E),
                          fontSize: ResponsiveWebSite.isMobile(context) ? 20 : 30),
                    ),
                  ],
                ),
              ),
      ]),
    );
  }
}
