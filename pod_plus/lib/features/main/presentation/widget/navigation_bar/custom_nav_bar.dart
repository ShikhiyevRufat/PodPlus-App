import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pod_plus/core/shared/presentation/config/color_call.dart';
import 'package:pod_plus/features/main/presentation/state/nav_bar_state.dart';
import 'package:pod_plus/features/main/presentation/widget/constants/nav_bar_items.dart';
import 'package:pod_plus/features/main/presentation/widget/navigation_bar/nav_bar_cubit.dart';

class CustomNavBar extends StatelessWidget {
  CustomNavBar({super.key});

  final List<Map<String, String>> _navItems = [
    {"iconPath": "assets/svg/home.svg"},
    {"iconPath": "assets/svg/reels.svg"},
    {"iconPath": "assets/svg/username.svg"},
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationCubit, NavigationState>(
      builder: (context, state) {
        return Container(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
            color: context.primaryColor,
            boxShadow: [
              BoxShadow(
                color: context.secondaryColor,
                blurRadius: 1,
                offset: const Offset(0, -1),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(_navItems.length, (index) {
              final item = _navItems[index];
              return GestureDetector(
                onTap: () => context
                    .read<NavigationCubit>()
                    .getNavBarItem(NavbarItem.values[index]),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SvgPicture.asset(
                      item["iconPath"]!,
                      colorFilter: ColorFilter.mode(
                        state.index == index
                            ? context.secondaryColor
                            : context.onsecondaryColor,
                        BlendMode.srcIn,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      height: 2,
                      width: 80,
                      color: state.index == index
                          ? context.secondaryColor
                          : Colors.transparent,
                    ),
                  ],
                ),
              );
            }),
          ),
        );
      },
    );
  }
}
