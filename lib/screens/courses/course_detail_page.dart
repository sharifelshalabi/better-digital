import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:video_player/video_player.dart';
import 'package:video_viewer/video_viewer.dart';
import '../../constants/theme_constant.dart';
import '../../globals.dart';
import '../../injection.dart';
import '../../widgets/cached_image_widget.dart';
import '../../widgets/custom_carousel_slider3.dart';
import '../../widgets/customize_app_bar2.dart';
import '../../widgets/customize_app_bar3.dart';
import '../../widgets/toast_utils.dart';
import 'bloc/courses_bloc.dart';
import 'bloc/courses_state.dart';
import 'widgets/coach_image_slider.dart';


class CourseDetailPage extends StatefulWidget {
   CourseDetailPage({Key? key}) : super(key: key);

  @override
  _CourseDetailPageState createState() => _CourseDetailPageState();
}

class _CourseDetailPageState extends State<CourseDetailPage> {

  CoursesBloc coursesBloc = sl<CoursesBloc>();


  final VideoViewerController controller = VideoViewerController();

  VideoPlayerController? getVideoPlayer() => controller.video;
  String? getactiveSourceNameName() => controller.activeSourceName;
  String? getActiveCaption() => controller.activeCaption;
  bool isFullScreen() => controller.isFullScreen;
  bool isBuffering() => controller.isBuffering;
  bool isPlaying() => controller.isPlaying;

  @override
  void dispose() {
    controller.dispose();
    if(getVideoPlayer != null) {
      getVideoPlayer()!.dispose();
    }
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CoursesBloc, CoursesState>(
      bloc: coursesBloc,
  listener: (context, state) {

    },
  builder: (context, state) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomizeAppBar3(
                title: "Security course",
                hasLeading: true,
                hasTrailing: false,
              ),
              Expanded(
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: [
                    SizedBox(height: 25.h,),
                    //
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 18.r),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.r),
                      child: VideoViewer(
                        controller: controller,
                        source: {
                          "SubRip Text": VideoSource(
                            video: VideoPlayerController.network(
                                "https://www.speechpad.com/proxy/get/marketing/samples/standard-captions-example.mp4"),
                          )
                        },
                      ),

                      ),
                    ),
                    SizedBox(height: 30.h,),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 18.r),
                      child: Text("Security course",
                      style: MyFonts.boldFont.copyWith(
                        fontSize: fontSize + 1.sp,
                          color: !isDark ? MyColors.greyElevenColor : MyColors.thirdContainerColor
                      ),
                      ),
                    ),
                    SizedBox(height: 21.h,),
                    CoachImageSlider(
                      imgList: [
                        "assets/images/example.png",
                        "assets/images/example3.png",
                        "assets/images/example.png",
                        "assets/images/example3.png",
                        "assets/images/example.png",
                        "assets/images/example3.png",
                        "assets/images/example.png",
                        "assets/images/example3.png",
                      ],
                    ),
                    SizedBox(height: 21.h,),
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 16.r),
                      child: Text("Link".tr(),
                        style: MyFonts.semiBoldFont.copyWith(
                            fontSize: fontSize - 1.sp,
                            color: !isDark ? MyColors.greyElevenColor : MyColors.thirdContainerColor
                        ),
                      ),
                    ),
                    SizedBox(height: 4.h,),
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 16.r),
                      child: InkWell(
                        onTap:() async{
                          await launchUrl(Uri.parse('https://www.google.com'));
                        },
                        child: Text("https://www.google.com".tr(),
                          style: MyFonts.mediumFont.copyWith(
                              decoration: TextDecoration.underline,
                              fontSize: fontSize - 1.sp,
                              color: Colors.blue
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 21.h,),
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 16.r),
                      child: Text("Description".tr(),
                        style: MyFonts.semiBoldFont.copyWith(
                            fontSize: fontSize - 1.sp,
                            color: !isDark ? MyColors.greyElevenColor : MyColors.thirdContainerColor
                        ),
                      ),
                    ),
                    SizedBox(height: 4.h,),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 18.r),
                      child: Text("Security course Security course Security course Security course Security course Security course Security course Security course Security course ",
                      style: MyFonts.mediumFont.copyWith(
                        fontSize: fontSize - 2.sp,
                        color: MyColors.greSixteenColor
                      ),
                      ),
                    ),
                    SizedBox(height: 25.h,),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  },
);
  }
}
