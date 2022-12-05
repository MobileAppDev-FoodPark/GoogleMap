import 'package:custom_info_window/custom_info_window.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

const LatLng customLocation = LatLng(14.852885352588201, 120.81614049713285);

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late GoogleMapController _mapController;
  final Map<String, Marker> _markers = {};
  final _customInfoWindowController = CustomInfoWindowController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          GoogleMap(
            initialCameraPosition:
                const CameraPosition(target: customLocation, zoom: 11.5),
            onMapCreated: (controller) {
              _mapController = controller;
              _customInfoWindowController.googleMapController = controller;
              addMarker('test', customLocation);
              addMarker1(
                'test1',
                const LatLng(14.842100727754945, 120.83743481184958),
              );
              addMarker2(
                'test2',
                const LatLng(14.858096320640007, 120.74220251284042),
              );

              addMarker3(
                'test3',
                const LatLng(14.910325002383217, 120.8469576064095),
              );

              addMarker4(
                'test4',
                const LatLng(14.80791402094921, 120.86976416153937),
              );

              addMarker5('test5',
                  const LatLng(14.896344082681443, 120.77674251390367));
            },
            onTap: (location) {
              _customInfoWindowController.hideInfoWindow!();
            },
            onCameraMove: (position) {
              _customInfoWindowController.onCameraMove!();
            },
            markers: _markers.values.toSet(),
          ),
          CustomInfoWindow(
            controller: _customInfoWindowController,
            height: 245,
            width: 220,
            offset: 50,
          )
        ],
      ),
    );
  }

  addMarker5(String markerid4, LatLng location) async {
    var markerIcon = await BitmapDescriptor.fromAssetImage(
        const ImageConfiguration(), 'assets/images/sanmarcosfoodpark.png');
    var marker = Marker(
        markerId: MarkerId(markerid4),
        position: location,
        //infoWindow: const InfoWindow(
        //  title: 'Title of Place',
        // snippet: 'Description',
        //),
        icon: markerIcon,
        onTap: () {
          _customInfoWindowController.addInfoWindow!(
            Container(
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(24),
              ),
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/sanmarcoswindow.jpg',
                    fit: BoxFit.cover,
                  ),
                  const Text(
                    'San Marcos Foodpark',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    'Address:',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 8.0, right: 8.0),
                    child: Text(
                      '13, R-9, Calumpit, Bulacan',
                      style: TextStyle(fontSize: 11),
                    ),
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  const Text('Contact no: ',
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                  const Text('',
                      style: TextStyle(
                        fontSize: 11,
                      ))
                ],
              ),
            ),
            location,
          );
        });

    _markers[markerid4] = marker;
    setState(() {});
  }

  addMarker4(String markerid3, LatLng location) async {
    var markerIcon = await BitmapDescriptor.fromAssetImage(
        const ImageConfiguration(), 'assets/images/muntingparaisofoodpark.png');
    var marker = Marker(
        markerId: MarkerId(markerid3),
        position: location,
        //infoWindow: const InfoWindow(
        //  title: 'Title of Place',
        // snippet: 'Description',
        //),
        icon: markerIcon,
        onTap: () {
          _customInfoWindowController.addInfoWindow!(
            Container(
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(24),
              ),
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/muntingparaisowindow.jpg',
                    fit: BoxFit.cover,
                  ),
                  const Text(
                    'Munting Paraiso Foodpark',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    'Address:',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    '101 Arterial Rd, Bulakan, Bulacan',
                    style: TextStyle(fontSize: 11),
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  const Text('Contact no: ',
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                  const Text('',
                      style: TextStyle(
                        fontSize: 11,
                      ))
                ],
              ),
            ),
            location,
          );
        });

    _markers[markerid3] = marker;
    setState(() {});
  }

  addMarker3(String markerid2, LatLng location) async {
    var markerIcon = await BitmapDescriptor.fromAssetImage(
        const ImageConfiguration(), 'assets/images/pulilanfoodpark.png');
    var marker = Marker(
        markerId: MarkerId(markerid2),
        position: location,
        //infoWindow: const InfoWindow(
        //  title: 'Title of Place',
        // snippet: 'Description',
        //),
        icon: markerIcon,
        onTap: () {
          _customInfoWindowController.addInfoWindow!(
            Container(
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(24),
              ),
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/pulilanwindow.jpg',
                    fit: BoxFit.cover,
                  ),
                  const Text(
                    'The Mill: Pulilan Foodpark',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    'Address:',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 15, right: 8.0),
                    child: Text(
                      'WR2W+WWH, Regional Road, Pulilan, Bulacan',
                      style: TextStyle(fontSize: 11),
                    ),
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  const Text('Contact no: ',
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                  const Text('0998-562-6400',
                      style: TextStyle(
                        fontSize: 11,
                      ))
                ],
              ),
            ),
            location,
          );
        });

    _markers[markerid2] = marker;
    setState(() {});
  }

  addMarker2(String markerid1, LatLng location) async {
    var markerIcon = await BitmapDescriptor.fromAssetImage(
        const ImageConfiguration(), 'assets/images/sanmiguelfoodpark.png');
    var marker = Marker(
        markerId: MarkerId(markerid1),
        position: location,
        //infoWindow: const InfoWindow(
        //  title: 'Title of Place',
        // snippet: 'Description',
        //),
        icon: markerIcon,
        onTap: () {
          _customInfoWindowController.addInfoWindow!(
            Container(
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(24),
              ),
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/sanmiguelwindow.jpg',
                    fit: BoxFit.cover,
                  ),
                  const Text(
                    'San Miguel Foodpark',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    'Address:',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    'San Miguel Purok7 Hagonoy Bulacan',
                    style: TextStyle(fontSize: 11),
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  const Text('Contact no: ',
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                  const Text('0923-416-7121',
                      style: TextStyle(
                        fontSize: 11,
                      ))
                ],
              ),
            ),
            location,
          );
        });

    _markers[markerid1] = marker;
    setState(() {});
  }

  addMarker1(String markerid, LatLng location) async {
    var markerIcon = await BitmapDescriptor.fromAssetImage(
        const ImageConfiguration(), 'assets/images/garahefoodpark.png');
    var marker = Marker(
        markerId: MarkerId(markerid),
        position: location,
        //infoWindow: const InfoWindow(
        //  title: 'Title of Place',
        // snippet: 'Description',
        //),
        icon: markerIcon,
        onTap: () {
          _customInfoWindowController.addInfoWindow!(
            Container(
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(24),
              ),
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/garajewindow.jpg',
                    fit: BoxFit.cover,
                  ),
                  const Text(
                    'Garaje Foodpark',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  const Text(
                    'Address:',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 8.0, right: 8.0),
                    child: Text(
                      'Garaje Food Park, Bagong Bayan, City of Malolos Bulacan'
                      '(fronting Bulacan Sports Complex, near Marcelo H. del Pilar National High School)',
                      style: TextStyle(fontSize: 11),
                    ),
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  const Text('Contact no: ',
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                  const Text('0927-154-2895',
                      style: TextStyle(
                        fontSize: 11,
                      ))
                ],
              ),
            ),
            location,
          );
        });

    _markers[markerid] = marker;
    setState(() {});
  }

  addMarker(String id, LatLng location) async {
    var markerIcon = await BitmapDescriptor.fromAssetImage(
        const ImageConfiguration(), 'assets/images/Crossroadsfoodpark.png');
    var marker = Marker(
        markerId: MarkerId(id),
        position: location,
        //infoWindow: const InfoWindow(
        //  title: 'Title of Place',
        // snippet: 'Description',
        //),
        icon: markerIcon,
        onTap: () {
          _customInfoWindowController.addInfoWindow!(
            Container(
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(24),
              ),
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/crossroadswindow.jpg',
                    fit: BoxFit.cover,
                  ),
                  const Text(
                    'Crossroads Foodpark',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  // ignore: prefer_const_constructors
                  Text(
                    'Address:',
                    //textAlign: TextAlign.right,
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 8.0, right: 8.0),
                    child: Text(
                      'VR38+4FR, A Mabini, Malolos, 3000 Bulacan',
                      style: TextStyle(fontSize: 11),
                    ),
                  ),

                  const SizedBox(
                    height: 5.0,
                  ),

                  const Text('Contact no: ',
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                  const Text('0927-154-2895',
                      style: TextStyle(
                        fontSize: 11,
                      ))
                ],
              ),
            ),
            location,
          );
        });

    _markers[id] = marker;
    setState(() {});
  }
}
