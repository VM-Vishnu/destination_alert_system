//import 'package:destination_alert_system/CurrentLocation.dart';
import 'package:destination_alert_system/alarm.dart';
import 'package:destination_alert_system/homeScreen.dart';
import 'package:flutter/material.dart';
import 'package:geocode/geocode.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
class Googlemap extends StatefulWidget {
  Position position;
  Coordinates sourcePosition;
  Coordinates destinationPosition;
  Googlemap(this.sourcePosition,this.destinationPosition,this.position, {Key? key}) : super(key: key);
  @override
  State<Googlemap> createState() => _GooglemapState();
}
class _GooglemapState extends State<Googlemap> {
  late LatLng currentLocation;
  late CameraPosition initialPosition;
   late LatLng dPosition;
   late LatLng sPosition;
  Set<Marker> marker() {
    return {
      Marker(
        markerId: const MarkerId("marker 1"),
        position: sPosition,
      ),
      Marker(markerId: const MarkerId("Marker 2"),position: dPosition),
    };
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    currentLocation =
        LatLng(widget.sourcePosition.latitude!, widget.sourcePosition.longitude!);
    initialPosition = CameraPosition(target: currentLocation, zoom: 17.0);
    sPosition=LatLng(widget.sourcePosition.latitude!, widget.sourcePosition.longitude!);
    dPosition=LatLng(widget.destinationPosition.latitude!,widget.destinationPosition.longitude!);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //leading: const Icon(Icons.forward),
        title: const Text("Map"),
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context,MaterialPageRoute(builder: (context)=>ALarm(widget.sourcePosition,widget.destinationPosition),),);
          }, icon: const Icon(Icons.arrow_forward),),
        ],
      ),
      body: GoogleMap(
        initialCameraPosition: initialPosition,
        myLocationEnabled: true,
        markers: marker(),
      ),
    );
  }
}
