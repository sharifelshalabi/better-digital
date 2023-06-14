import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project_manger/widgets/toggle_switch_widget1.dart';

import '../../widgets/customize_app_bar3.dart';
import 'widgets/estimates_list.dart';
import 'widgets/invoices_list.dart';
import 'widgets/payments_list.dart';


class BillsPage extends StatefulWidget {
  bool isFromHome;
   BillsPage({Key? key,required this.isFromHome}) : super(key: key);

  @override
  _BillsPageState createState() => _BillsPageState();
}

class _BillsPageState extends State<BillsPage> with TickerProviderStateMixin {

  late TabController tabController;
  int initialLabelIndex = 0;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset("assets/images/background_image.png",
            width: 1.sw,
            height: 1.sh,
            fit: BoxFit.cover,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomizeAppBar3(
                title: "Payments",
                hasLeading: true, hasTrailing: false,
              ),
              SizedBox(height: 40.h,),
              if(!widget.isFromHome)...[
                Center(
                child: ToggleSwitchWidget1(
                    initialLabelIndex: initialLabelIndex,
                    labels: const ["Invoice","Payments","Estimates","Subscriptions"],
                    onToggle: (value) {
                      initialLabelIndex = value ?? 0;
                      setState(() {

                      });
                    },
                    minHeight: 50.h,
                    totalSwitches: 4,
                    fontSize: 10.sp,
                    minWidth: 0.4.sw),
              ),
              SizedBox(height: 40.h,),],
              Expanded(child: initialLabelIndex == 0?
              InvoicesList():
              initialLabelIndex == 1?
              PaymentsList():
              EstimatesList()
              ),
              // Expanded(
              //   child: PaymentGridView(),
              // )
            ],
          ),
        ],
      ),
    );
  }
}
