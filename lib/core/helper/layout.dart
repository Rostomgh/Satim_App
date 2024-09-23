import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:satim_hack/Logic/layout/layout_cubit.dart';
import 'package:satim_hack/core/Theme/AppColor.dart';
import 'package:satim_hack/core/helper/Assets.dart';


class LayoutScreen extends StatelessWidget {
  const LayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LayoutCubit, LayoutState>(
      builder: (context, state) {
        final cubit = LayoutCubit.get(context);
        return Scaffold(
          backgroundColor: Theme.of(context).colorScheme.surface,
          body: cubit.pages[cubit.currentIndex],
          bottomNavigationBar: NavigationBar(
            backgroundColor: AppColor.white,
            elevation: 2.0,
            selectedIndex: cubit.currentIndex,
            
            onDestinationSelected: (value) {
            
              cubit.changeLayout(value, context);
            },
            shadowColor: Colors.black.withOpacity(0.5),
            indicatorColor: Colors.transparent,
            labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
            destinations: [
            
              NavigationDestination(
                icon: Image.asset(
                  Assets.nav1,
                  height: 28,
                  color: cubit.currentIndex == 0
                        ?  AppColor.satim
                      : AppColor.black,
                ),
                label: 'Home',
              ),
              NavigationDestination(
                icon: Image.asset(
                  Assets.nav2,
                  height: 28,
                  color: cubit.currentIndex == 1
                    ?  AppColor.satim
                      : AppColor.black,
                ),
                label: 'Your Request'
              ),
              NavigationDestination(
                icon: Image.asset(
                  Assets.nav3,
                  height: 28,
                  color: cubit.currentIndex == 2
                    ?  AppColor.satim
                      : AppColor.black,
                ),
                label: 'Account',
              ),
              
            ],
          ),
        );
      },
    );
  }
}