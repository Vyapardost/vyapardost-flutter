import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/color_constants.dart';

class LogoWithText extends StatelessWidget {
  const LogoWithText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          'assets/icons/VyaparDost.svg',
          height: 24,
          width: 40,
        ),
        Text('Vyapar Dost',
            style: GoogleFonts.poppins(
              fontSize: 24,
              fontWeight: FontWeight.w700,
              color: primaryColor,
            )),
      ],
    );
    ;
  }
}
