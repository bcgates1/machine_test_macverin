/// TicketUi Screen
///
/// This screen displays information about the user's tickets, including
/// upcoming and historical events. It provides options for downloading and
/// sharing tickets.

import 'package:flutter/material.dart';
import 'package:machine_test_macverin/common_widgets.dart';

class TicketUi extends StatelessWidget {
  const TicketUi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            // Spacer to create space at the top of the screen
            Spacer(flex: 5),

            // HeaderText widget displays the title of the screen
            HeaderText(text: 'Your tickets'),

            // Spacer to add space between the header and buttons
            Spacer(),

            // Row containing buttons for 'Upcoming' and 'History'
            Row(
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
            TicketContainer(),

            Spacer(),

            // Row with buttons for 'Download' and 'Share'
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // ElevatedButtonWithIconWidget for 'Download'
                ElevatedButtonWithIconWidget(
                  text: 'Download',
                  icon: Icons.download,
                  backgroundColor: Color(0xffcd2e4c),
                  width: 160,
                ),

                // ElevatedButtonWithIconWidget for 'Share'
                ElevatedButtonWithIconWidget(
                  text: 'Share',
                  icon: Icons.circle_outlined,
                  backgroundColor: Color.fromARGB(255, 31, 31, 31),
                  width: 160,
                ),
              ],
            ),

            // Spacer to create space at the bottom of the screen
            Spacer(flex: 3),
          ],
        ),
      ),

      // BottomNavigationBarWidget for navigation at the bottom of the screen
      bottomNavigationBar: BottomNavigationBarWidget(),
    );
  }
}
