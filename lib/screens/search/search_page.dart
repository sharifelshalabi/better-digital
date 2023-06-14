import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/theme_constant.dart';
import '../../../injection.dart';
import '../../../shared_preferences.dart';
import '../../../widgets/customize_app_bar1.dart';
import '../../globals.dart';
import 'widgets/search_grid.dart';
import 'widgets/search_text_field.dart';


class SearchPage extends StatefulWidget {


  const SearchPage({Key? key,}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController searchEditingController = TextEditingController(text: '');
  FocusNode searchFocusNode = FocusNode();


  Timer? _timer;
  int _start = 1;

  void startTimer(String va) {
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_start == 0) {
          // searchBloc.add(GetSearchItems(itemType: widget.itemType, page: 1));
          timer.cancel();
        } else {
          _start--;
        }
      },
    );
  }

  @override
  void dispose() {
    searchEditingController.dispose();
    searchFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
          body: Stack(
            children: [
              Image.asset(
                "assets/images/background_image.png",
                fit: BoxFit.cover,
                height: 1.sh,
                width: 1.sw,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomizeAppBar1(title: "Search", hasLeading: true,),
                  SizedBox(height: 20.h,),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 20.r),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("What do you like".tr(),
                            style: MyFonts.semiBoldFont.copyWith(
                                fontSize: fontSize + 6.sp
                            ),
                          ),
                          RichText(text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "to do, ",
                                  style: MyFonts.semiBoldFont.copyWith(
                                      fontSize: fontSize + 6.sp
                                  ),
                                ),
                                TextSpan(
                                  text: "Mohamed ?",
                                  style: MyFonts.boldFont.copyWith(
                                      fontSize: fontSize + 7.sp
                                  ),
                                ),
                              ]
                          ))
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20.h,),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.r),
                    child: Row(
                      children: [
                        Expanded(
                            child: SearchTextField(
                          voidCallback: () {
                            // searchEditingController.clear();
                            // searchBloc.add(ChangeShowSuggestionsEvent(showSuggestions: false));
                          },
                          searchFocusNode: searchFocusNode,
                          searchEditingController: searchEditingController,
                          onEditingComplete: () {
                            // if (state.searchText.isNotEmpty) {
                            //   Preferences.saverRecentSearches(search: searchEditingController.text, recentSearchKey: 'KeyEmployeeRecentSearch');
                            //   searchBloc.onChangeRecentSearchList(Preferences.getRecentSearches(recentSearchKey: "KeyEmployeeRecentSearch"));
                            // }
                          },
                          onChanged: (value) {
                            // if (value.trim().isNotEmpty) {
                            //   _start = 1;
                            //   if (_timer != null) {
                            //     _timer!.cancel();
                            //   }
                            //   startTimer(value);
                            //   searchBloc.add(ChangeShowSuggestionsEvent(showSuggestions: true));
                            //   searchBloc.onChangeSearchText(value);
                            // }
                          },
                          onSubmitted: (va) {
                          },
                        )),

                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Expanded(child: SearchGrid())
                ],
              ),
            ],
          ),
        );

  }
}
