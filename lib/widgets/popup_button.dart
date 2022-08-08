import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class popup extends StatefulWidget {
  const popup({super.key});

  @override
  State<popup> createState() => _popupState();
}

class _popupState extends State<popup> {
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
          itemBuilder: (ctx) => [
            _buildPopupMenuItem('Search', Icons.search),
            _buildPopupMenuItem('Upload', Icons.upload),
            _buildPopupMenuItem('Copy', Icons.copy),
            _buildPopupMenuItem('Exit', Icons.exit_to_app),
          ],
        );
      
  
  }

  PopupMenuItem _buildPopupMenuItem(
      String title, IconData iconData) {
    return PopupMenuItem(
      child:  Row(
        children: [
          Icon(iconData, color: Colors.black,),
          Text(title),
        ],
      ),
    );
  }
  }
