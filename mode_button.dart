import 'package:flutter/material.dart';

class ModeButton extends StatelessWidget {
  final String label;
  final String icon;
  final bool isActive;
  final VoidCallback onTap;

  ModeButton({required this.label, required this.icon, required this.isActive, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          color: isActive ? Colors.cyanAccent.withOpacity(0.1) : Colors.transparent,
          borderRadius: BorderRadius.circular(30),
          border: Border.all(
            color: isActive ? Colors.cyanAccent : Colors.white24,
            width: 1.5,
          ),
          boxShadow: isActive ? [
            BoxShadow(color: Colors.cyanAccent.withOpacity(0.3), blurRadius: 10)
          ] : [],
        ),
        child: Row(
          children: [
            Text(icon, style: TextStyle(fontSize: 18)),
            SizedBox(width: 8),
            Text(label, style: TextStyle(
              color: isActive ? Colors.cyanAccent : Colors.white70,
              fontWeight: FontWeight.bold
            )),
          ],
        ),
      ),
    );
  }
}