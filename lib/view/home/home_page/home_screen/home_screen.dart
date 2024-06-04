import 'package:flutter/material.dart';
import 'package:lepton_new_web/view/colors/colors.dart';
import 'package:lepton_new_web/view/fonts/google_monstre.dart';
import 'package:lepton_new_web/view/fonts/google_poppins_widget.dart';
import 'package:lepton_new_web/view/home/appBar/appBar.dart';
import 'package:lepton_new_web/view/home/home_page/HomeMainImageScreen/HomeMainImage_screen.dart';
import 'package:lepton_new_web/view/home/home_page/about/about.dart';
import 'package:lepton_new_web/view/widget/responsive/responsive.dart';

class HomeScreen extends StatelessWidget {
  final ScrollController sscrollcontroller = ScrollController();
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: cWhite,
      appBar: const PreferredSize(
          preferredSize: Size(double.infinity, 100), child: ResponsiveMobileAppBar()),
      body: ListView(
        children: [
          HomeMainImageScreenWidget(screenSize: screenSize),

          /// Main Image Screen Section >>>>>>>>>>>>>>>

          const AboutWidget(), // Read More Section >>>>>>>>>
          //  const OurPracticesContainerWidget(),
          // Padding(
          //   padding: const EdgeInsets.only(top: 10),
          //   child: VideoSectionContainer(sscrollcontroller: sscrollcontroller),
          // ),

          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: SizedBox(
              height: ResponsiveWebSite.isMobile(context)
                  ? 350
                  : 500, // Adjust the height of the containers as needed
              child: Column(
                children: [
                  GooglePoppinsWidgets(
                    text: 'OUR ARTICLES',
                    fontsize: 25,
                    fontWeight: FontWeight.w800,
                    color: cWhite,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 1,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  // Navigator.push(
                                  //     context,
                                  //     MaterialPageRoute(
                                  //         builder: (context) =>
                                  //             ArticleView(
                                  //                 url: snapshot.data!
                                  //                         .docs[index]
                                  //                     ['articleUrl'])));
                                },
                                child: Container(
                                    margin: const EdgeInsets.all(8.0),
                                    width: ResponsiveWebSite.isMobile(context)
                                        ? 200
                                        : 400, // Adjust the width of each container as needed
                                    child: Container(
                                      color: Colors.white,
                                      child: Image.asset('assests/images/advo_logo_new.png'),
                                    )),
                              ),
                              GoogleMonstserratWidgets(
                                text: "-----",
                                fontsize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ],
                          );
                        }),
                  )
                ],
              ),
            ),
          ),

          // Padding(
          //   padding: const EdgeInsets.only(top: 10),
          //   child: OurTeamContainerWidget(sscrollcontroller: sscrollcontroller),
          // ),

          // const Divider(
          //   height: 01,
          //   // thickness: 01,
          //   color: cWhite,
          // ),
          // const FooterSectionScreen(),
          // const Divider(
          //   height: 01,
          //   // thickness: 01,
          //   color: cWhite,
          // ),
          // const CopyRightWidget()
        ],
      ),
    );
  }
}

List<String> persionPhotos = [
  'assests/images/persion_4.jpeg',
  'assests/images/persion_2.jpeg',
  'assests/images/persion_1.jpeg',
  'assests/images/persion_3.jpeg',
];
List<String> persion_text = [''];

List<String> headerText = [
  'Home',
  'About',
  'Sevices',
];
