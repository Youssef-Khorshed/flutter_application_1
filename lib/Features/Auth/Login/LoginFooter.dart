import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:takeed/core/Extensions/navigation.dart';
import 'package:takeed/core/Routes/routes.dart';
import 'package:takeed/core/Theme/Styles/textStyles.dart';

class LoginscreenFooter extends StatelessWidget {
  const LoginscreenFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 45.w),
        child: Column(
          children: [
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: 'By logging, you agree to our ',
                style: TextStyles.font10RegularDarkGray,
                children: [
                  TextSpan(
                    text: 'Terms & Conditions ',
                    style: TextStyles.font12RegularDarkGray,
                  ),
                  TextSpan(
                    text: 'and \n',
                    style: TextStyles.font10RegularDarkGray,
                  ),
                  TextSpan(
                    text: 'PrivacyPolicy.',
                    style: TextStyles.font12RegularDarkGray,
                  ),
                ],
              ),
            ),
            SizedBox(height: 30.h),
            RichText(
              text: TextSpan(
                  text: 'Already have an account?  ',
                  style: TextStyles.font12RegularDarkGray,
                  children: [
                    TextSpan(
                      text: 'Sign Up',
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          context.pushReplacementNamed(Routes.register);
                        },
                      style: TextStyles.font14orangeRegular,
                    )
                  ]),
            )
          ],
        ),
      ),
    );
  }
}