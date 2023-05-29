import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_beeline/core/extensions/text_style.dart';
import 'package:my_beeline/features/bottom_bar/cubit/bottom_bar_cubit.dart';
import 'package:my_beeline/features/main/view/main_screen.dart';
import 'package:my_beeline/features/more/view/more_screen.dart';
import 'package:my_beeline/features/rate/view/rate_screen.dart';
import 'package:my_beeline/features/service/view/service_screen.dart';
import 'package:my_beeline/l10n/l10n.dart';
import 'package:my_beeline/ui/colors/my_beeline_colors.dart';
import 'package:my_beeline/ui/typography/font_weights.dart';

class TabScreen extends StatelessWidget {
  const TabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomBarCubit, BottomBarState>(
      builder: (context, state) {
        return Scaffold(
          extendBody: true,
          resizeToAvoidBottomInset: false,
          appBar: AppBar(),
          body: Stack(
            alignment: Alignment.center,
            clipBehavior: Clip.none,
            children: [
              IndexedStack(
                index: state.index,
                children: const [
                  MainScreen(),
                  RateScreen(),
                  ServiceScreen(),
                  MoreScreen(),
                ],
              ),
            ],
          ),
          bottomNavigationBar: ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                border: Border(
                    top: BorderSide(
                  color: Colors.grey,
                )),
              ),
              child: SingleChildScrollView(
                physics: const NeverScrollableScrollPhysics(),
                child: Theme(
                  data: ThemeData(
                    splashColor: Colors.black,
                    highlightColor: Colors.black,
                  ),
                  child: BottomNavigationBar(
                    currentIndex: state.index,
                    type: BottomNavigationBarType.fixed,
                    unselectedLabelStyle: context.bodyXS?.copyWith(
                      color: MyBeelineColors.errorCritical,
                      fontWeight: BeelineFontWeights.medium,
                    ),
                    selectedLabelStyle: context.bodyXS?.copyWith(
                      color: MyBeelineColors.secondaryColor,
                      fontWeight: BeelineFontWeights.regular,
                    ),
                    unselectedIconTheme:
                        const IconThemeData(color: Colors.white),
                    unselectedItemColor: MyBeelineColors.primary,
                    backgroundColor: Colors.black,
                    elevation: 0,
                    onTap: (v) {
                      context.read<BottomBarCubit>().changeTab(v);
                    },
                    items: [
                      BottomNavigationBarItem(
                        icon: const Icon(Icons.home),
                        activeIcon: const Icon(
                          Icons.home,
                          color: MyBeelineColors.secondaryColor,
                        ),
                        label: context.l10n.main,
                      ),
                      BottomNavigationBarItem(
                        icon: const Icon(Icons.rate_review),
                        activeIcon: const Icon(
                          Icons.rate_review,
                          color: MyBeelineColors.secondaryColor,
                        ),
                        label: context.l10n.rate,
                      ),
                      BottomNavigationBarItem(
                        icon: const Icon(Icons.room_service),
                        activeIcon: const Icon(
                          Icons.room_service,
                          color: MyBeelineColors.secondaryColor,
                        ),
                        label: context.l10n.service,
                      ),
                      BottomNavigationBarItem(
                        icon: const Icon(Icons.more),
                        activeIcon: const Icon(
                          Icons.more,
                          color: MyBeelineColors.secondaryColor,
                        ),
                        label: context.l10n.more,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
