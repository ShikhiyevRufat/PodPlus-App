// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:state_notifier/state_notifier.dart';
// import 'palette.dart';

// class PaletteState {
//   final ThemeMode themeMode;
//   final ThemeData themeData;

//   PaletteState({
//     required this.themeMode,
//     required this.themeData,
//   });
// }

// class PaletteNotifier extends StateNotifier<PaletteState> {
//   PaletteNotifier()
//       : super(
//           PaletteState(
//             themeMode: ThemeMode.light,
//             themeData: AppColors.lightColorScheme,
//           ),
//         );

//   void toggleTheme() {
//     if (state.themeMode == ThemeMode.light) {
//       state = PaletteState(
//         themeMode: ThemeMode.dark,
//         themeData: AppColors.darkColorScheme,
//       );
//     } else {
//       state = PaletteState(
//         themeMode: ThemeMode.light,
//         themeData: AppColors.lightColorScheme,
//       );
//     }
//   }
// }

// final paletteProvider = StateNotifierProvider<PaletteNotifier, PaletteState>(
//   (ref) => PaletteNotifier(),
// );
