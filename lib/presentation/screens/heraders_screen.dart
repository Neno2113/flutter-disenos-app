import 'package:flutter/material.dart';
import '../widgets/widgets.dart';



class HeaderScreen extends StatelessWidget {
  const HeaderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: TrinagularHeader()
    );
  }
}