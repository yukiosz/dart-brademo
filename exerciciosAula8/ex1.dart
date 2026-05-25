import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final ligado = await Geolocator.isLocationServiceEnabled();
  if (!ligado) {
    runApp(const MainApp(aviso: 'ative a localizacao'));
    return;
  }

  var permissao = await Geolocator.checkPermission();
  if (permissao == LocationPermission.denied) {
    permissao = await Geolocator.requestPermission();
  }

  if (permissao == LocationPermission.denied ||
      permissao == LocationPermission.deniedForever) {
    runApp(const MainApp(aviso: 'permita o acesso a localizacao'));
    return;
  }

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key, this.aviso});

  final String? aviso;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Tela(aviso: aviso),
    );
  }
}

class Tela extends StatelessWidget {
  const Tela({super.key, this.aviso});

  final String? aviso;
  static final fluxo = Geolocator.getPositionStream();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('mapa')),
      body: aviso == null ? const Mapa() : Center(child: Text(aviso!)),
    );
  }
}

class Mapa extends StatelessWidget {
  const Mapa({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<Position>(
      stream: Tela.fluxo,
      builder: (context, dados) {
        if (!dados.hasData) {
          return const Center(child: Text('localizando'));
        }

        final posicao = dados.data!;
        final local = LatLng(posicao.latitude, posicao.longitude);

        return GoogleMap(
          initialCameraPosition: CameraPosition(target: local, zoom: 16),
          myLocationEnabled: true,
          markers: {
            Marker(
              markerId: const MarkerId('local'),
              position: local,
              infoWindow: const InfoWindow(title: 'seu local'),
            ),
          },
        );
      },
    );
  }
}
