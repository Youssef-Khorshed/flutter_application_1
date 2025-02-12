import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:takeed/Features/Flight/FlightSearchResult/FlightSearchResultCard.dart';
import 'package:takeed/Features/BottomNavigation/Home/Data/Model/flightSearchModel.dart';
import 'package:takeed/core/Theme/Color/colors.dart';
import 'package:takeed/core/Theme/Styles/textStyles.dart';

// ignore: must_be_immutable
class Flightticketrow extends StatefulWidget {
  FlightSearchData flightdetails;

  Flightticketrow({super.key, required this.flightdetails});

  @override
  State<Flightticketrow> createState() => _FlightticketrowState();
}

class _FlightticketrowState extends State<Flightticketrow> {
  initState() {
    widget.flightdetails.itineraries ??= [
      Itineraries(duration: "PT1H30M", segments: [
        Segments(
          id: "1",
          numberOfStops: 0,
          blacklistedInEU: false,
          carrierCode: "AA",
          number: "1",
          duration: "PT1H30M",
          departure: Departure(
              iataCode: "JFK", terminal: "T2", at: "2022-07-26T22:30:00"),
          arrival: Departure(
              iataCode: "JFK", terminal: "T2", at: "2022-07-26T22:30:00"),
          aircraft: Aircraft(
            code: "320",
          ),
        )
      ])
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                    FlightCard.getTime(
                        time: widget.flightdetails!.itineraries!.first.segments!
                            .first.departure!.at!),
                    style: TextStyles.font18BlackBold),
                Text(
                    widget.flightdetails!.itineraries!.first.segments!.first
                        .departure!.iataCode!,
                    style: TextStyles.font14BlackRegular),
              ],
            ),
            SizedBox(
              width: 25.w,
            ),
            CircleAvatar(
              radius: 4.r,
              backgroundColor: ColorManager.GrayColor,
            ),
            Container(
              width: 40.w,
              height: 2.h,
              color: ColorManager.GrayColor,
            ),
            const CircleAvatar(
                backgroundColor: ColorManager.primaryOrnage,
                child: Icon(Icons.airplanemode_active, color: Colors.white)),
            Container(
              width: 40.w,
              height: 2.h,
              color: ColorManager.GrayColor,
            ),
            CircleAvatar(
              radius: 4.r,
              backgroundColor: ColorManager.GrayColor,
            ),
            SizedBox(
              width: 25.w,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                    FlightCard.getTime(
                        time: widget.flightdetails!.itineraries!.first.segments!
                            .first.arrival!.at!),
                    style: TextStyles.font18BlackBold),
                Text(
                    widget.flightdetails!.itineraries!.first.segments!.first
                        .arrival!.iataCode!,
                    style: TextStyles.font14BlackRegular),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
