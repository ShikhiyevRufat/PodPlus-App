// lib/features/main/presentation/pages/main_page.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pod_plus/core/shared/presentation/config/color_call.dart';
import 'package:pod_plus/features/main/interier/home/home_page.dart';
import 'package:pod_plus/features/main/interier/profile/profile_page.dart';
import 'package:pod_plus/features/main/interier/reels/reels_page.dart';
import 'package:pod_plus/features/main/presentation/state/nav_bar_state.dart';
import 'package:pod_plus/features/main/presentation/widget/constants/nav_bar_items.dart';
import 'package:pod_plus/features/main/presentation/widget/navigation_bar/custom_nav_bar.dart';
import 'package:pod_plus/features/main/presentation/widget/navigation_bar/nav_bar_cubit.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationCubit, NavigationState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: context.primaryColor,
          bottomNavigationBar: CustomNavBar(),
          body: switch (state.navbarItem) {
            NavbarItem.home => const HomePage(),
            NavbarItem.reels => const ReelsPage(),
            NavbarItem.profile => const ProfilePage(),
            _ => throw UnimplementedError('no such index'),
          },
        );
      },
    );
  }
}
