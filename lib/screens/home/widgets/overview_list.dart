
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:project_manger/screens/bills/bills_page.dart';
import 'package:project_manger/screens/requirements/requirements_page.dart';
import '../../../constants/theme_constant.dart';
import '../../../globals.dart';
import '../../../widgets/cached_image_widget.dart';
import '../../proposals/proposals_page.dart';
import '../../projects/project_detail_page.dart';

List<HomeOverview> homeOverviewList = [
  HomeOverview(count: 2,status: "Pending",image: 'project_icon',type: "Projects",),
  HomeOverview(count: 3,status: "Pending",image: 'task_icon1',type: "Tasks",),
  HomeOverview(count: 1,status: "Pending",image: 'invoice_icon',type: "Invoices",),
  HomeOverview(count: 4,status: "Pending",image: 'ticket_icon',type: "Tickets",),
  HomeOverview(count: 5,status: "Pending",image: 'proposal_icon',type: "Proposals",),
  HomeOverview(count: 2,status: "Completed",image: 'project_icon',type: "Projects",),
  HomeOverview(count: 1,status: "Waiting",image: 'project_icon',type: "Projects",),
];

class OverviewList extends StatelessWidget {

   OverviewList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      padding: EdgeInsets.symmetric(horizontal: 20.r),
      shrinkWrap: true,
      itemCount: homeOverviewList.length,
      itemBuilder:   (context, index) {
      return InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return
            homeOverviewList[index].type == "Projects" ?
            ProjectDetailPage():
            homeOverviewList[index].type == "Tasks" ?
            RequirementsPage(isFromProject: false,):
            homeOverviewList[index].type == "Invoices" ?
            BillsPage(isFromHome: true):
            homeOverviewList[index].type == "Proposals" ?
            ProposalsPage() :
            ProposalsPage() ;
          },));
        },
        child: Container(
          margin:  EdgeInsets.only(bottom:  15.r),
          padding:  EdgeInsets.symmetric(horizontal:20.r,vertical: 10.r),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
              color: isDark ? MyColors.blackOpacity.withOpacity(0.18) : MyColors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(homeOverviewList[index].type,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: MyFonts.mediumFont.copyWith(
                    fontSize: fontSize ,
                    color: MyColors.whiteTwoColor
                ),
              ),
              SizedBox(height: 8.h,),
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.r),
                  topRight: Radius.circular(10.r),
                ),
                child: Container(
                  padding:  EdgeInsets.symmetric(horizontal: 12.r,vertical: 20.r),
                  decoration: BoxDecoration(
                    color: isDark ? MyColors.blackOpacity : MyColors.white,
                    border: Border(bottom: BorderSide(color: MyColors.oneTrialColor,width: 3))
                  ),
                  child: Row(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset("assets/images/${homeOverviewList[index].image}.png",
                        width: 40.r,
                        height: 40.r,
                        color: MyColors.whiteTwoColor,
                      ),

                      Column(
                        children: [
                          Text(homeOverviewList[index].count.toString(),
                            maxLines: 1,
                            style: MyFonts.mediumFont.copyWith(
                                fontSize: fontSize - 1.sp,
                                color: !isDark ? MyColors.blackTwoColor : MyColors.thirdContainerColor
                            ),
                          ),
                          SizedBox(height: 8.h,),
                          Text(homeOverviewList[index].status,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            style: MyFonts.regularFont.copyWith(
                                fontSize: fontSize - 2.sp,
                                color: homeOverviewList[index].status == "Pending" ?
                                    MyColors.orange:
                                homeOverviewList[index].status == "Waiting" ?
                                    MyColors.errorColor:
                                    Colors.green
                            ),
                          ),
                        ],
                      ),

                    ],
                  ),
                ),
              ),
              SizedBox(height: 15.h,),
            ],
          ),
        ),
      );
    },);
  }
}

class HomeOverview{
  final int count;
  final String status;
  final String image;
  final String type;

  HomeOverview({required this.count,required this.status,required this.image,required this.type});
}