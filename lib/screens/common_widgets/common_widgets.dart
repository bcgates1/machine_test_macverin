// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';

import 'package:machine_test_macverin/screens/your_tickets_screen/widgets/ticket_widget.dart';

import '../style/global.dart';

/// A custom widget representing a header text.
class HeaderText extends StatelessWidget {
  final String text;

  const HeaderText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.white,
        fontSize: Global.sH * 0.05,
      ),
    );
  }
}

/// A custom widget representing a ticket container.
class TicketContainer extends StatelessWidget {
  const TicketContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Global.sH * 0.55,
      margin: EdgeInsets.all(Global.sH * 0.02),
      child: CustomPaint(
        painter: TicketPainter(
          borderColor: const Color.fromARGB(255, 30, 30, 31),
          bgColor: const Color.fromARGB(255, 12, 12, 14),
        ),
        child: Column(
          children: [
            ListTile(
              leading: const Icon(
                Icons.account_circle,
                color: Colors.white,
                size: 50,
              ),
              title: Text(
                'Anuj jain',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: Global.sH * 0.022,
                ),
              ),
              subtitle: Text(
                'India Tour 2023',
                style: TextStyle(color: Colors.grey, fontSize: Global.sH * 0.014),
              ),
              trailing: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '03-04-2023',
                    style: TextStyle(color: Colors.grey, fontSize: Global.sH * 0.017),
                  ),
                  Text(
                    ' 11:00 AM -  2:00 PM',
                    style: TextStyle(color: Colors.grey, fontSize: Global.sH * 0.017),
                  ),
                ],
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.asset(
                'assets/images/product image real.jpg',
                height: Global.sH * 0.24,
              ),
            ),
            const Spacer(
              flex: 4,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: Global.sW * 0.01),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: const ColoredBox(
                  color: Color.fromARGB(255, 50, 50, 50),
                  child: Padding(
                    padding: EdgeInsets.all(5.0),
                    child: TicketDetails(),
                  ),
                ),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}

/// A custom widget representing details within a ticket.
class TicketDetails extends StatelessWidget {
  const TicketDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            const Icon(
              Icons.pin_drop_outlined,
              color: Colors.white,
              size: 20,
            ),
            Text(
              ' Mumbai Stadium, Mumbai,India',
              style: TextStyle(
                color: Colors.white,
                fontSize: Global.sH * 0.017,
              ),
            ),
          ],
        ),
        SizedBox(height: Global.sH * 0.01),
        Row(
          children: [
            const Icon(
              Icons.pin_drop_outlined,
              color: Colors.white,
              size: 20,
            ),
            Text(
              '03-04-2023, 11:00am - 2:00pm',
              style: TextStyle(
                color: Colors.white,
                fontSize: Global.sH * 0.017,
              ),
            ),
          ],
        ),
        SizedBox(height: Global.sH * 0.01),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(
              Icons.confirmation_number,
              color: Colors.white,
              size: 20,
            ),
            const Spacer(),
            Text(
              'Row: 2',
              style: TextStyle(
                color: Colors.white,
                fontSize: Global.sH * 0.017,
              ),
            ),
            const Spacer(
              flex: 2,
            ),
            Text(
              'Seats:  09,10',
              style: TextStyle(
                color: Colors.white,
                fontSize: Global.sH * 0.017,
              ),
            ),
            const Spacer(
              flex: 10,
            ),
          ],
        ),
        SizedBox(height: Global.sH * 0.01),
        Row(
          children: [
            const Icon(
              Icons.confirmation_number,
              color: Colors.white,
              size: 20,
            ),
            const Spacer(),
            Text(
              '₹10,000',
              style: TextStyle(
                color: Colors.white,
                fontSize: Global.sH * 0.027,
              ),
            ),
            const Spacer(),
            Text(
              '  ₹15,000',
              style: TextStyle(
                color: Colors.white,
                fontSize: Global.sH * 0.017,
                decoration: TextDecoration.lineThrough,
              ),
            ),
            const Spacer(
              flex: 12,
            ),
          ],
        ),
        SizedBox(height: Global.sH * 0.01),
        BarcodeWidget(
          barcode: Barcode.code128(),
          data: 'Hello Flutter',
          drawText: false,
          color: Colors.white,
          width: Global.sW * 0.75,
          height: Global.sH * 0.04,
        ),
      ],
    );
  }
}

/// A custom widget representing an elevated button.
class ElevatedButtonWidget extends StatelessWidget {
  final String? text;
  final Color backgroundColor;
  final Widget? child;
  final double? height;
  final double? width;

  const ElevatedButtonWidget({
    Key? key,
    this.text,
    required this.backgroundColor,
    this.child,
    this.height,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        fixedSize: height == null ? null : Size(width!, height!),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
      child: text == null ? child! : Text(text!),
    );
  }
}

/// A custom widget representing an elevated button with an icon.
class ElevatedButtonWithIconWidget extends StatelessWidget {
  final String text;
  final IconData icon;
  final Color backgroundColor;
  final double width;
  final double height;

  const ElevatedButtonWithIconWidget({
    super.key,
    required this.text,
    required this.icon,
    required this.backgroundColor,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {},
      icon: Icon(icon),
      label: Text(text),
      style: ButtonStyle(
        fixedSize: MaterialStateProperty.all(Size(width, height)),
        backgroundColor: MaterialStateProperty.all(backgroundColor),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}

/// A custom widget representing a bottom navigation bar.
class BottomNavigationBarWidget extends StatefulWidget {
  const BottomNavigationBarWidget({Key? key}) : super(key: key);

  @override
  BottomNavigationBarWidgetState createState() => BottomNavigationBarWidgetState();
}

class BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  int currentPageIndex = 2;

  /// to show ticket screen
  final GlobalKey bottomNavBarKey = GlobalKey();
  double indicatorLeftPosition = 0;

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      updateIndicatorPosition();

      /// to show indicator in ticket screen other wise it will show in home screen
    });
    return Container(
      padding: EdgeInsets.symmetric(horizontal: Global.sW * 0.05, vertical: Global.sH * 0.01),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 20, 20, 20),
        border: Border(
          top: BorderSide(color: Colors.grey.withOpacity(0.2)),
        ),
      ),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: BottomNavigationBar(
              key: bottomNavBarKey,
              type: BottomNavigationBarType.fixed,
              backgroundColor: const Color.fromARGB(255, 40, 40, 40),
              items: [
                const BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home',
                ),
                const BottomNavigationBarItem(
                  icon: Icon(Icons.groups_3_outlined),
                  label: 'Party',
                ),
                const BottomNavigationBarItem(
                  icon: Icon(Icons.confirmation_num),
                  label: 'Tickets',
                ),
                BottomNavigationBarItem(
                  icon: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.asset(
                      'assets/images/profile_pic.jpeg',
                      width: 20,
                      height: 20,
                    ),
                  ),
                  label: 'Profile',
                ),
              ],
              currentIndex: currentPageIndex,
              showUnselectedLabels: false,
              showSelectedLabels: false,
              selectedItemColor: Colors.red[800],
              unselectedItemColor: Colors.grey,
              onTap: (index) {
                setState(() {
                  currentPageIndex = index;
                  updateIndicatorPosition();
                });
              },
            ),
          ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
            left: indicatorLeftPosition,
            bottom: 0,
            child: Container(
              width: Global.sW * 0.1,
              height: 2,
              color: Colors.red[800],

              /// Color of the indicator line
            ),
          ),
        ],
      ),
    );
  }

  /// Updates the position of the indicator based on the current page index.
  void updateIndicatorPosition() {
    final RenderBox renderBox = bottomNavBarKey.currentContext!.findRenderObject() as RenderBox;
    final double itemWidth = renderBox.size.width / 4;

    /// Assuming you have 4 items
    setState(() {
      indicatorLeftPosition = itemWidth * currentPageIndex + (itemWidth / 3.5);
    });
  }
}
