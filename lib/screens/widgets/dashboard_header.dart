import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:khaabd_web/utils/colors.dart';

class DashboardHeader extends StatelessWidget {
  const DashboardHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      padding: const EdgeInsets.only(top: 32, left: 32, right: 32, bottom: 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Updated Row with logo + text
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Logo at the start
              Image.asset(
                'assets/pngs/kkr_logo.png',
                width: 98,
                height: 98,
                fit: BoxFit.contain,
              ),
              const SizedBox(width: 24),
              // Text block
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Store Keeper',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Welcome Back',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              // Notification box as before
              Row(
                children: [
                  SvgPicture.asset("assets/svgs/logout.svg"),
                  const SizedBox(width: 8),
                  Text(
                    "Logout",
                    style: TextStyle(
                      color: whiteColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  const SizedBox(width: 24),
                ],
              ),
            ],
          ),
          const SizedBox(height: 16),
          // Container(
          //   height: 3,
          //   color: Colors.white.withOpacity(0.4),
          //   margin: const EdgeInsets.only(right: 0),
          // ),
        ],
      ),
    );
  }
}