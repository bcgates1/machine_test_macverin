/// TicketUi Screen
///
/// This screen displays information about the user's tickets, including
/// upcoming and historical events. It provides options for downloading and
/// sharing tickets.

import 'package:flutter/material.dart';
import 'package:machine_test_macverin/screens/common_widgets/common_widgets.dart';
import 'package:machine_test_macverin/screens/style/global.dart';

class TicketUi extends StatelessWidget {
  const TicketUi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            // Spacer to create space at the top of the screen
            const Spacer(flex: 5),

            // HeaderText widget displays the title of the screen
            const HeaderText(text: 'Your tickets'),

            // Spacer to add space between the header and buttons
            const Spacer(),

            // Row containing buttons for 'Upcoming' and 'History'
            const Row(
              children: [
                Spacer(flex: 10),

                // ElevatedButtonWidget for 'Upcoming' events
                ElevatedButtonWidget(backgroundColor: Color(0xffcd2e4c), text: 'Upcoming'),

                Spacer(),

                // ElevatedButtonWidget for 'History' events
                ElevatedButtonWidget(
                    backgroundColor: Color.fromARGB(255, 30, 30, 31), text: 'History'),

                Spacer(flex: 10),
              ],
            ),

            // TicketContainer widget displays information about a specific ticket
            const TicketContainer(),

            const Spacer(),

            // Row with buttons for 'Download' and 'Share'
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // ElevatedButtonWithIconWidget for 'Download'
                ElevatedButtonWithIconWidget(
                  text: 'Download',
                  icon: Icons.download,
                  backgroundColor: const Color(0xffcd2e4c),
                  width: Global.sW * 0.5,
                  height: Global.sH * 0.06,
                ),

                // ElevatedButtonWithWidget for 'Share'
                ElevatedButtonWidget(
                  text: null,
                  height: Global.sH * 0.06,
                  width: Global.sW * 0.35,
                  backgroundColor: const Color.fromARGB(255, 31, 31, 31),
                  child: const Row(
                    children: [
                      Icon(Icons.circle_outlined),
                      Text(' Share '),
                      Icon(Icons.circle_outlined),
                    ],
                  ),
                )
              ],
            ),

            // Spacer to create space at the bottom of the screen
            const Spacer(flex: 3),
          ],
        ),
      ),

      // BottomNavigationBarWidget for navigation at the bottom of the screen
      bottomNavigationBar: const BottomNavigationBarWidget(),
    );
  }
}


// ElevatedButton(
            //       onPressed: () {},
            //       style: ButtonStyle(
            //           fixedSize: const MaterialStatePropertyAll(Size.fromHeight(45)),
            //           backgroundColor:
            //               MaterialStateProperty.all(const Color.fromARGB(255, 31, 31, 31)),
            //           shape: MaterialStatePropertyAll(
            //               RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)))),
            //       child: const Row(
            //         children: [
            //           Icon(Icons.circle_outlined),
            //           Text(' Share '),
            //           Icon(Icons.circle_outlined),
            //         ],
            //       ),
            //     ),
            //   ],
            // ),