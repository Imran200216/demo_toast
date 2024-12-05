import 'package:delightful_toast/delight_toast.dart';
import 'package:delightful_toast/toast/components/toast_card.dart';
import 'package:delightful_toast/toast/utils/enums.dart';
import 'package:demo_toast/component/custom_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sliding_toast/flutter_sliding_toast.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:toastification/toastification.dart';

class NormalToastScreen extends StatelessWidget {
  const NormalToastScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            /// simple toast
            CustomBtn(
              onTap: () {
                Fluttertoast.showToast(
                  msg: "Hi Toasty",
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.TOP,
                  timeInSecForIosWeb: 1,
                  backgroundColor: Colors.black,
                  textColor: Colors.white,
                  fontSize: 16.0,
                );
              },
              btnWidth: 180,
              btnText: "Simple Toast",
            ),

            const SizedBox(
              height: 40,
            ),

            /// delight toast
            CustomBtn(
              onTap: () {
                DelightToastBar(
                  snackbarDuration: const Duration(
                    seconds: 1,
                  ),
                  position: DelightSnackbarPosition.bottom,
                  builder: (context) => ToastCard(
                    color: Colors.blue,
                    leading: const FlutterLogo(
                      size: 20,
                    ),
                    title: Text(
                      "Hi Flutter Dev!",
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ).show(context);
              },
              btnWidth: 180,
              btnText: "Delight Toast",
            ),

            const SizedBox(
              height: 40,
            ),

            /// toastification
            CustomBtn(
              onTap: () {
                toastification.show(
                  context: context,
                  // optional if you use ToastificationWrapper
                  type: ToastificationType.success,
                  style: ToastificationStyle.flat,
                  autoCloseDuration: const Duration(seconds: 5),
                  title: Text(
                    'Hi Flutter Dev!',
                    style: GoogleFonts.montserrat(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),

                  // you can also use RichText widget for title and description parameters
                  description: Text(
                    'Success toast!',
                    style: GoogleFonts.montserrat(
                      color: Colors.grey,
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                    ),
                  ),
                  alignment: Alignment.topRight,
                  direction: TextDirection.ltr,
                  animationDuration: const Duration(milliseconds: 300),
                  icon: const FlutterLogo(
                    size: 40,
                  ),
                );
              },
              btnWidth: 180,
              btnText: "Toastification",
            ),

            const SizedBox(
              height: 40,
            ),

            /// flutter sliding toast
            CustomBtn(
              onTap: () {
                InteractiveToast.slide(
                  context,
                  leading: const FlutterLogo(
                    size: 30,
                  ),
                  title: Container(
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage("assets/images/toast-bg.jpg"),
                        // Background image
                        fit: BoxFit.cover,
                      ),
                      borderRadius:
                          BorderRadius.circular(8), // Optional: Rounded corners
                    ),
                    child: Text(
                      "Hi there! Flutter Devs 😎. "
                      "Dismiss me by sliding upward.",
                      style: GoogleFonts.montserrat(
                        color: Colors
                            .white, // Ensure text is visible on the background
                      ),
                    ),
                  ),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.ac_unit,
                      color: Colors.grey,
                    ),
                  ),
                  toastStyle: const ToastStyle(titleLeadingGap: 10),
                  toastSetting: const SlidingToastSetting(
                    animationDuration: Duration(seconds: 1),
                    displayDuration: Duration(seconds: 2),
                    toastStartPosition: ToastPosition.top,
                    toastAlignment: Alignment.topCenter,
                  ),
                );
              },
              btnWidth: 180,
              btnText: "Sliding toast",
            ),
          ],
        ),
      ),
    );
  }
}
