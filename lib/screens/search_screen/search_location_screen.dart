import 'package:flutter/material.dart';
import 'package:machine_test_macverin/screens/style/global.dart';

showLocation({required BuildContext context}) {
  return showDialog(
    context: context,
    builder: (context) {
      return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: const Color.fromARGB(255, 23, 23, 23),
            border: Border.all(
              color: const Color.fromARGB(255, 50, 50, 50),
              width: 2,
            ),
          ),
          padding: EdgeInsets.all(Global.sH * 0.015),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Row(
                children: [
                  Text(
                    "Choose your Location",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  Spacer(),
                  Icon(Icons.close, color: Colors.white, size: 25),
                ],
              ),
              SizedBox(height: Global.sH * 0.01),
              const TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(10),
                  filled: true,
                  fillColor: Colors.black,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  ),
                  hintText: 'Search',
                  hintStyle: TextStyle(color: Colors.grey),
                  prefixIcon: Icon(Icons.search, color: Colors.grey),
                ),
              ),
              SizedBox(height: Global.sH * 0.01),
              Row(
                children: [
                  Image.asset('assets/images/location_arrow.png'),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Detect my location",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        )),
                  )
                ],
              ),
              SizedBox(height: Global.sH * 0.01),
              const Text("Suggested",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  )),
              SizedBox(height: Global.sH * 0.01),
              SizedBox(
                height: Global.sH * 0.09,
                child: ListView.builder(
                  itemCount: 4,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: Container(
                        width: 75,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black,
                          border: Border.all(
                            color: const Color.fromARGB(255, 50, 50, 50),
                            width: 2,
                          ),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 8),
                              child: Image.asset(
                                locationImages[index],
                                width: 30,
                              ),
                            ),
                            const Spacer(),
                            Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Text(location[index],
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                  )),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}

List location = [
  'Bangalore',
  'Mumbai',
  'Delhi',
  'Hyderabad',
];
List locationImages = [
  'assets/images/bangalor.jpg',
  'assets/images/mumbai.jpg',
  'assets/images/taj-mahal.jpg',
  'assets/images/hyderabad.jpg',
];
