import 'package:flutter/material.dart';

class Isotype extends StatelessWidget {
  const Isotype({
    Key? key,
    required this.arc1,
    required this.arc2,
    required this.arc3,
  }) : super(key: key);

  final bool arc1;
  final bool arc2;
  final bool arc3;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
        color: Colors.red.withOpacity(arc3 ? 0.6 : 0),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Center(
        child: Container(
          width: 20,
          height: 20,
          decoration: BoxDecoration(
            color: Colors.red.withOpacity(arc2 ? 0.8 : 0),
            borderRadius: BorderRadius.circular(100),
          ),
          child: Center(
            child: Container(
              width: 10,
              height: 10,
              decoration: BoxDecoration(
                color: Colors.red.withOpacity(arc1 ? 0.9 : 0),
                borderRadius: BorderRadius.circular(100),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
