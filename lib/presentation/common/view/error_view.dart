import 'package:flutter/material.dart';
import 'package:fonoteke/assets/colors/colors.dart';

class ErrorView extends StatelessWidget {
  const ErrorView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Error"),
      ),
      body: Center(
        child: Container(
          width: 368,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: white,
            boxShadow: wboxShadow,
          ),
          padding: const EdgeInsets.all(24),
          child: const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 12),
              Text(
                'Hech narsa topilmadi',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.5,
                  color: dark,
                ),
              ),
              SizedBox(height: 12),
              Text(
                'Rahbariyatga murojaat qiling',
                style: TextStyle(
                  fontSize: 16,
                  letterSpacing: 0.5,
                  color: greyText,
                ),
              ),
              SizedBox(height: 12),
            ],
          ),
        ),
      ),
    );
  }
}
