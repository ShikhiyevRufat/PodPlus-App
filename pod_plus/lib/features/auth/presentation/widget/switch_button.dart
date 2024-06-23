import 'package:flutter/material.dart';
import 'package:pod_plus/core/shared/presentation/config/color_call.dart';

class SwitchButton extends StatelessWidget {
  const SwitchButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scaleX: 0.7,
      scaleY: 0.7,
      child: Switch(
        inactiveThumbColor: const Color.fromARGB(255, 109, 251, 166),
        inactiveTrackColor: const Color.fromARGB(255, 109, 251, 166),
        trackOutlineColor: context.trackOutlineColor,
        activeColor: context.secondaryColor,
        onChanged: (_) => context.secondaryColor,
        thumbIcon: WidgetStateProperty.all(const Icon(Icons.circle,size: 30,color: Colors.white,)), 
        value: false,
      ),
    );
  }
}
