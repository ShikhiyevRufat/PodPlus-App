import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pod_plus/app/pod_plus.dart';

void main() {
  runApp(
    const ProviderScope(
      child: PodPlusApp(),
    ),
  );
}
