import 'package:flutter/material.dart';

class NoInternet extends StatelessWidget {
  const NoInternet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFF5F5F8),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Image(
                height: 160,
                width: 160,
                image: AssetImage('assets/images/no_internet.png'),
              ),
              const SizedBox(
                height: 26.96,
              ),
              const Text(
                "No internet Connection",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 19,
              ),
              const Text(
                'You internet connection is currently \n'
                'not available please check or try again',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                  color: Color.fromRGBO(0, 0, 0, 0.57),
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 55,
              ),
              Container(
                height: 70,
                width: 314,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: const Color.fromRGBO(250, 74, 12, 1),
                ),
                child: const Center(
                  child: Text(
                    "Try again",
                    style: TextStyle(
                      color: Color.fromRGBO(246, 246, 249, 1),
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
