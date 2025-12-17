import 'package:flutter/material.dart';
import '../../utils/constants.dart';

class SideMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: CometColors.background,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [CometColors.softPurple, Colors.black]),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(backgroundColor: CometColors.neonBlue, radius: 30, child: Icon(Icons.bolt, color: Colors.black)),
                SizedBox(height: 10),
                Text("COMET AI", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
                Text("v1.0 - Premium", style: TextStyle(color: Colors.white70, fontSize: 12)),
              ],
            ),
          ),
          _drawerItem(Icons.chat_bubble_outline, "AI Chat", () {}),
          _drawerItem(Icons.code, "Developer Mode", () {}),
          _drawerItem(Icons.school_outlined, "Learning Mode", () {}),
          _drawerItem(Icons.videogame_asset_outlined, "Gaming Mode", () {}),
          _drawerItem(Icons.movie_creation_outlined, "Creator Mode", () {}),
          Divider(color: Colors.white12),
          _drawerItem(Icons.settings_outlined, "Settings", () {}),
        ],
      ),
    );
  }

  Widget _drawerItem(IconData icon, String title, VoidCallback onTap) {
    return ListTile(
      leading: Icon(icon, color: CometColors.neonBlue),
      title: Text(title, style: TextStyle(color: Colors.white)),
      onTap: onTap,
      hoverColor: Colors.white10,
    );
  }
}