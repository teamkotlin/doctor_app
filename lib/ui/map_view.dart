import 'package:doctor_app/constants/colors.dart';
import 'package:flutter/material.dart';

import '../common_widgets/map_container.dart';

class MapViewScreen extends StatefulWidget {
  const MapViewScreen({Key? key}) : super(key: key);

  @override
  State<MapViewScreen> createState() => _MapViewScreenState();
}

class _MapViewScreenState extends State<MapViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
/*      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: Colors.black.withOpacity(0.001),
      ),*/
      body: MapContainer(),
    );
  }
}
