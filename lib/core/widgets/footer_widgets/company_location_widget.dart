import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:selim_trade_app/commons/coordinates_company.dart';
import 'package:selim_trade_app/core/exports/export.dart';

class CompanyLocationBoxWidget extends StatefulWidget {
  final bool zoomControlsEnabled;
  const CompanyLocationBoxWidget({
    Key? key,
    this.zoomControlsEnabled = false,
  }) : super(key: key);

  @override
  State<CompanyLocationBoxWidget> createState() =>
      CompanyLocationBoxWidgetState();
}

class CompanyLocationBoxWidgetState extends State<CompanyLocationBoxWidget> {
  late Completer<GoogleMapController> _controller;
  static const LatLng coordinates = CoordinatesOfCompany.coordinates;

  @override
  void initState() {
    _controller = Completer<GoogleMapController>();
    super.initState();
  }

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: coordinates,
    zoom: 15,
  );

  static const CameraPosition _kLake = CameraPosition(
    target: coordinates,
    zoom: 19.151926040649414,
  );

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      mapType: MapType.normal,
      initialCameraPosition: _kGooglePlex,
      zoomControlsEnabled: widget.zoomControlsEnabled,
      onMapCreated: (GoogleMapController controller) {
        _controller.complete(controller);
      },
      markers: {
        const Marker(
          markerId: MarkerId('source'),
          infoWindow: InfoWindow(
            title: 'Selim Trade',
            snippet: TextHelper.isCompany,
          ),
          position: coordinates,
        ),
      },
    );
  }

  Future<void> doToTheLocation() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  }
}
