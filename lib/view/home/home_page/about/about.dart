import 'package:flutter/material.dart';
import 'package:lepton_new_web/view/colors/colors.dart';
import 'package:lepton_new_web/view/fonts/google_poppins_widget.dart';
import 'package:lepton_new_web/view/widget/responsive/responsive.dart';

class AboutWidget extends StatelessWidget {
  const AboutWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      color: const Color.fromARGB(255, 19, 19, 19),
      height: ResponsiveWebSite.isMobile(context)
          ? 180
          : ResponsiveWebSite.isTablet(context)
              ? 200
              : 300,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: ResponsiveWebSite.isTablet(context)
                ? 200
                : ResponsiveWebSite.isMobile(context)
                    ? double.infinity
                    : 300,
            width: ResponsiveWebSite.isTablet(context)
                ? 150
                : ResponsiveWebSite.isMobile(context)
                    ? 60
                    : 200,
            child: Image.asset(
              'assests/images/shai_solo_rotate.png',
              fit: ResponsiveWebSite.isMobile(context) ? BoxFit.fitHeight : BoxFit.fitWidth,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: ResponsiveWebSite.isMobile(context) ? 100 : 80,
                width: size.width / 1.9,
                child: Center(
                  child: Padding(
                    padding: ResponsiveWebSite.isDesktop(context)
                        ? const EdgeInsets.only()
                        : const EdgeInsets.only(left: 05),
                    child: GooglePoppinsWidgets(
                        text:
                            '''Shaila Rani & Associates is a prestigious multinational law firm specializing in family and divorce law.\n Founded and led by Advocate Shaila Rani.''',
                        fontsize: ResponsiveWebSite.isTablet(context)
                            ? 13
                            : ResponsiveWebSite.isMobile(context)
                                ? 11
                                : 18,
                        color: cWhite),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
