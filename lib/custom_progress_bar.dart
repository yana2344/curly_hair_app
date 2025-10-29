import 'package:flutter/material.dart';

class CustomProgressBar extends StatelessWidget {
  final double progress; // значення від 0.0 до 1.0
  final String goal;

  const CustomProgressBar({
    Key? key,
    required this.progress,
    required this.goal,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Row з Progress і Goal
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
          ),

          // Прогрес бар
          Stack(
            children: [

              Container(
                height: 20,
                width: MediaQuery.of(context).size.width * progress,
                decoration: BoxDecoration(
                  color: const Color(0xFF48426D),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              Positioned.fill(
                child: Center(
                  child: Text(
                    '${(progress * 100).toInt()}%',
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
