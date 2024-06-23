import 'package:flutter/material.dart';
import 'package:pod_plus/core/shared/presentation/config/color_call.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.primaryColor,
      body: const Center(
      child: Text("Profile page"),
      ),
    );
  }
}