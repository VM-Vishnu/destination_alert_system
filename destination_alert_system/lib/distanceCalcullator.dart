//

import 'package:geolocator/geolocator.dart';
import 'package:flutter_alarm_clock/flutter_alarm_clock.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class DistanceCalculator
{
  
   Geolocator geolocator=Geolocator();
   Future<double> distance(LatLng l1,LatLng l2)async{
     
     //await Geolocator.requestPermission();
     //Position position=await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.best);
     double meter=0;
     //meter=Geolocator.distanceBetween(position.latitude, position.longitude, position.latitude+1,position.longitude+1);
     meter=Geolocator.distanceBetween(l1.latitude,l1.longitude,l2.latitude,l2.longitude);
     //print(meter);
    //  if(meter<1000.0){
      
    //  }
     return meter;
   }
   
}