import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;

  const Background({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.red,
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        children: [
          _PurpleBox(),
          SafeArea(
            child: Container(
              width: double.infinity,
              height: 100,
              child:
                  const Icon(Icons.person_pin, color: Colors.white, size: 100),
            ),
          ),
          child,
        ],
      ),
    );
  }
}

class _PurpleBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height * 0.4,
      decoration: _boxDecoration(),
      child: Stack(
        children: [
          Positioned(top: 90, left: 30, child: _bubble()),
          Positioned(top: -40, left: -30, child: _bubble()),
          Positioned(top: -50, right: -20, child: _bubble()),
          Positioned(bottom: -50, left: 10, child: _bubble()),
          Positioned(bottom: 120, right: 20, child: _bubble()),
        ],
      ),
    );
  }

  BoxDecoration _boxDecoration() {
    return const BoxDecoration(
      gradient: LinearGradient(
        colors: [
          Color.fromRGBO(63, 63, 156, 1),
          Color.fromRGBO(90, 70, 178, 1),
        ],
      ),
    );
  }

  Widget _bubble() {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: const Color.fromRGBO(255, 255, 255, 0.05),
      ),
    );
  }
}
