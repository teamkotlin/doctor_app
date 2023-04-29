import 'package:custom_marker/marker_icon.dart';
import 'package:doctor_app/providers/providers.dart';
import 'package:doctor_app/translations.dart';
import 'package:doctor_app/ui/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [...providers],
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        translations: Messages(),
        locale: const Locale('es', 'ES'),
        // translations will be displayed in that locale
//      locale:const Locale('en', 'US'), // translations will be displayed in that locale
        fallbackLocale: const Locale('es', 'ES'),
        home: SplashScreen(),
      ),
    );
  }
}
///////////////

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Set<Marker> _markers = <Marker>{};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        initialCameraPosition:
            CameraPosition(target: LatLng(32.4279, 53.6880), zoom: 15),
        markers: _markers,
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: FittedBox(child: Text('Add Markers')),
        onPressed: () async {
          _markers.add(
            Marker(
              markerId: MarkerId('svgAsset'),
              icon: await MarkerIcon.svgAsset(
                  assetName: 'assets/temp/doctor.jpg77',
                  context: context,
                  size: 50),
              position: LatLng(35.8400, 50.9391),
            ),
          );

          _markers.add(
            Marker(
              markerId: MarkerId('downloadResizePicture'),
              icon: await MarkerIcon.downloadResizePicture(
                  url:
                      'https://thegpscoordinates.net/photos/la/tehran_iran_5u679ezi8f.jpg',
                  imageSize: 150),
              position: LatLng(35.6892, 51.3890),
            ),
          );
          _markers.add(
            Marker(
              markerId: MarkerId('downloadResizePictureCircle'),
              icon: await MarkerIcon.downloadResizePictureCircle(
                  'https://thegpscoordinates.net/photos/la/tehran_iran_5u679ezi8f.jpg',
                  size: 150,
                  addBorder: true,
                  borderColor: Colors.white,
                  borderSize: 15),
              position: LatLng(34.6416, 50.8746),
            ),
          );

          setState(() {});
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
