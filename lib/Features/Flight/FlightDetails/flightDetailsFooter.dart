import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:takeed/Features/BottomNavigation/Home/Presentation/Logic/cubit/flight_cubit.dart';
import 'package:takeed/components/button/button.dart';
import 'package:takeed/components/button/button2.dart';
import 'package:takeed/core/Extensions/navigation.dart';
import 'package:takeed/core/Routes/routes.dart';
import 'package:takeed/core/Theme/Styles/textStyles.dart';

class Flightdetailsfooter extends StatelessWidget {
  const Flightdetailsfooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ExpansionTile(
            title: const Text('Add Travelers Information'), //
            //

            children: <Widget>[
              buildTravelers(context: context),
            ]),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: OutlinedTextButton(
                  buttonText: 'Cancel',
                  buttonWidth: 156.w,
                  buttonHeight: 56.h,
                  textStyle: TextStyles.font18orangeRegular,
                  onPressed: () {}),
            ),
            SizedBox(
              width: 15.w,
            ),
            Expanded(
              child: AppTextButton(
                  buttonHeight: 56.h,
                  buttonWidth: 156.w,
                  buttonText: 'Confirm',
                  textStyle: TextStyles.font18WhiteRegular,
                  onPressed: () {
                    context.pushNamed(Routes.payment);
                  }),
            ),
          ],
        ),
      ],
    );
  }

  buildTravelers({required BuildContext context}) {
    final x = context.read<FlightCubit>();
    final travelers = x.getTravelersCount;

    return ListView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: travelers.entries.expand((element) {
          // Create a ListTile for each traveler
          if (element.value > 1) {
            // If value is greater than one, create a list of items
            return List.generate(element.value, (index) {
              return ListTile(
                title: Text(element.key),
                trailing: Text('${index + 1}'),
              );
            });
          } else {
            // If value is one, just return a single ListTile
            return [
              ListTile(
                title: Text(element.key),
                trailing: Text('${element.value}'),
              ),
            ];
          }
        }).toList());
  }
}
