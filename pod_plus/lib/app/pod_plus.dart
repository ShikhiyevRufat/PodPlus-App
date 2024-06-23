import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pod_plus/core/config/screen_size.dart';
import 'package:pod_plus/core/router/app_router.dart';
import 'package:pod_plus/core/shared/presentation/config/palette.dart';
import 'package:pod_plus/features/main/presentation/widget/navigation_bar/nav_bar_cubit.dart';

class PodPlusApp extends StatelessWidget {
  const PodPlusApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: ScreenSize.phone,
      builder: (context, child) => MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => NavigationCubit(),
          ),
        ],
        child: Builder(
          builder: (context) {
            return MaterialApp.router(
              title: 'PodPlus',
              debugShowCheckedModeBanner: false,
              theme: lightColorScheme,
              darkTheme: darkColorScheme,
              routerConfig: goRouter,
            );
          },
        ),
      ),
    );
  }
}

