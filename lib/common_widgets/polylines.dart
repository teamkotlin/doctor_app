import 'package:custom_marker/marker_icon.dart';
import 'package:doctor_app/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class PolylineContainer extends StatefulWidget {
  final double originLatitude;

  final double originLongitude;

  final double destLatitude;

  final double destLongitude;

  const PolylineContainer({
    required this.destLongitude,
    required this.originLongitude,
    required this.originLatitude,
    required this.destLatitude,
  });

  @override
  _PolylineContainerState createState() => _PolylineContainerState();
}

class _PolylineContainerState extends State<PolylineContainer> {
  late GoogleMapController mapController;

  //double _originLatitude = 6.5212402, _originLongitude = 3.3679965;
  // double _destLatitude = 6.849660, _destLongitude = 3.648190;
  double _originLatitude = 30.355685238654, _originLongitude = 71.649374216894;
  double _destLatitude = 30.355685238057, _destLongitude = 71.549374216794;

  Map<MarkerId, Marker> markers = {};
  Map<PolylineId, Polyline> polylines = {};
  List<LatLng> polylineCoordinates = [];

/*  PolylinePoints polylinePoints = PolylinePoints();*/
  String googleAPiKey = "AIzaSyCsIZjH8VgRzQkZPDtkrTxC0iWAENkDbMo";

/*  CustomInfoWindowController _customInfoWindowController =
      CustomInfoWindowController();*/
  final GlobalKey globalKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    _addMarker(LatLng(widget.originLatitude, widget.originLongitude), "Doctor",
        BitmapDescriptor.defaultMarker,'2021-05-08-6096bb467dhd89');
    _addMarker(LatLng(widget.destLatitude, widget.destLongitude), "You",
        BitmapDescriptor.defaultMarkerWithHue(90),'2021-05-09-6096bbhn9m7dhd89');

/*    _addMarker(LatLng(widget.originLatitude, widget.originLongitude), "Doctor",
        'temp/doctor.jpg');
    _addMarker(LatLng(widget.destLatitude, widget.destLongitude), "Patient",
        'temp/user.jpg');
    _getPolyline();*/
  }

  @override
  Widget build(BuildContext context) {
    return Container(
//      height: 250,
      height: double.infinity,
      width: double.infinity,
      child: Stack(
        children: [
          GoogleMap(
            initialCameraPosition: CameraPosition(
                target: LatLng(widget.originLatitude, widget.originLongitude),
                zoom: 12),
            myLocationEnabled: true,
            tiltGesturesEnabled: true,
            compassEnabled: true,
            scrollGesturesEnabled: true,
            zoomGesturesEnabled: true,
            onMapCreated: _onMapCreated,
            onTap: (position) {
//              _customInfoWindowController.hideInfoWindow!();
            },
            markers: Set<Marker>.of(markers.values),
/*            polylines: Set<Polyline>.of(polylines.values),*/
          ),

/*          CustomInfoWindow(
            controller: _customInfoWindowController,
            height: 100,
            width: 100,
            offset: 20,
          ),*/
        ],
      ),
    );
  }

  void _onMapCreated(GoogleMapController controller) async {
    mapController = controller;
  }

  _addMarker(LatLng position, String id, BitmapDescriptor descriptor,String name) async {
    MarkerId markerId = MarkerId(id);
    Marker marker = Marker(
        markerId: markerId,
        //icon: descriptor,
        icon: await MarkerIcon.downloadResizePictureCircle(
            'https://absher.junaidali.tk/storage/app/public/product/$name.jpg',
            size: 150,
        addBorder: true,
        borderColor: whiteColor,
        borderSize: 15),
        position: position,
/*        onTap: () {
          _customInfoWindowController.addInfoWindow!(
              Container(
                height: 100,
                width: 100,
                color: Colors.red,
                child: Text('Hello'),
              ),
              position);
        },*/
        infoWindow: InfoWindow(title: '$id'));
    markers[markerId] = marker;
    setState(() {

    });
  }

/* _addMarker(LatLng position, String id, String assetName)async {
    MarkerId markerId = MarkerId(id);
    BitmapDescriptor markerIcon = await BitmapDescriptor.fromAssetImage(
        const ImageConfiguration(size: Size(8, 8)), 'assets/$assetName');
    Marker marker = Marker(
        markerId: markerId,
        icon: markerIcon,
        position: position,
        infoWindow: InfoWindow(title: '$id'));
    markers[markerId] = marker;
  }*/

  _addPolyLine() {
    PolylineId id = PolylineId("poly");
    Polyline polyline = Polyline(
        polylineId: id, color: Colors.red, points: polylineCoordinates);
    polylines[id] = polyline;
    setState(() {});
  }

/*  _getPolyline() async {
    PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
      googleAPiKey,
      PointLatLng(widget.originLatitude, widget.originLongitude),
      PointLatLng(widget.destLatitude, widget.destLongitude),
      travelMode: TravelMode
          .driving,
wayPoints: [PolylineWayPoint(location: "Sabo, Yaba Lagos Nigeria")]

    );
    if (result.points.isNotEmpty) {
      result.points.forEach((PointLatLng point) {
        polylineCoordinates.add(LatLng(point.latitude, point.longitude));
      });
    }
    _addPolyLine();
  }*/
}


