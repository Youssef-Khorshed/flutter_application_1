import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:takeed/Features/BottomNavigation/Home/Data/Model/flightSearchModel.dart';
import 'package:takeed/Features/BottomNavigation/MyBooking/mybookingDetails.dart';
import 'package:takeed/components/Flight/airportDetails.dart';
import 'package:takeed/components/Flight/flightTicketRow.dart';
import 'package:takeed/components/Line/line.dart';

class Mybooking extends StatelessWidget {
  FlightSearchData flightdetails;
  Mybooking({super.key, required this.flightdetails});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('My Booking'),
          centerTitle: true,
          automaticallyImplyLeading: false,
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.all(16.0.w),
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(_createRoute());
                  },
                  child: Column(
                    children: [
                      Flightticketrow(
                        flightdetails: flightdetails,
                      ),
                      Airportdetails(
                        flightSearchData: FlightSearchData(),
                      ),
                      Line(upperpadding: 5, lowerpadding: 2),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(_createRoute());
                  },
                  child: Column(
                    children: [
                      Flightticketrow(
                        flightdetails: flightdetails,
                      ),
                      Airportdetails(
                        flightSearchData: FlightSearchData(),
                      ),
                      Line(upperpadding: 5, lowerpadding: 2),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(_createRoute());
                  },
                  child: Column(
                    children: [
                      Flightticketrow(
                        flightdetails: flightdetails,
                      ),
                      Airportdetails(
                        flightSearchData: FlightSearchData(),
                      ),
                      Line(upperpadding: 5, lowerpadding: 2),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(_createRoute());
                  },
                  child: Column(
                    children: [
                      Flightticketrow(
                        flightdetails: flightdetails,
                      ),
                      Airportdetails(
                        flightSearchData: FlightSearchData(),
                      ),
                      Line(upperpadding: 5, lowerpadding: 2),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }

  Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) =>
          const Mybookingdetails(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(1.0, 0.0); // Start from the right
        const end = Offset.zero; // End at the original position
        const curve = Curves.easeInOut;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
        var offsetAnimation = animation.drive(tween);

        return SlideTransition(
          position: offsetAnimation,
          child: child,
        );
      },
    );
  }
}
