import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pod_plus/core/shared/presentation/config/color_call.dart';

class GoogleSignLogin extends StatelessWidget {
  const GoogleSignLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        height: 200.h,
        margin: const EdgeInsets.only(left: 50, right: 50),
        child: Column(children: [
          Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(right: 20.0),
                  child: Divider(
                    color: context.onsecondaryColor,
                    height: 50,
                  ),
                ),
              ),
              const Text("OR"),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(left: 20.0),
                  child: Divider(
                    color: context.onsecondaryColor,
                    height: 50,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () => null,
                child: Card(
                  color: const Color.fromARGB(113, 107, 107, 107),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset("assets/svg/facebook.svg"),
                  ),
                ),
              ),
              InkWell(
                onTap: () => null,
                child: Card(
                  color: const Color.fromARGB(113, 107, 107, 107),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset("assets/svg/google.svg"),
                  ),
                ),
              ),
              InkWell(
                onTap: () => null,
                child: Card(
                  color: const Color.fromARGB(113, 107, 107, 107),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset("assets/svg/apple.svg"),
                  ),
                ),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
