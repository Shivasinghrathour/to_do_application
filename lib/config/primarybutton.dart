import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final String btnName;
  final VoidCallback onTap;
  const PrimaryButton({
    super.key,
    required this.btnName,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 18),
      child: Center(
        child: InkWell(
          onTap: onTap,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Center(
                child: Text(
                  btnName,
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
