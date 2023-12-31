import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final List<Map<String, dynamic>> options = [
    {
      'title': 'Scan QR Code',
      'route': '/qr_scan',
      'icon': Icons.qr_code,
    },
    {
      'title': 'SCANEAR CODIGO DE BARRAS',
      'route': '/barcode_scan',
      'icon': Icons.qr_code,
     
    },
    {
      'title': 'Generar codigo QR',
      'route': '/qr_generator',
      'icon': Icons.qr_code_scanner,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      backgroundColor: Colors.green,
      appBar: AppBar(
        title: Text('QR & CODIGO DE BARRAS'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Bienvenidos a QR & Codigo de Barras',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 32),
            ListView.builder(
              shrinkWrap: true,
              itemCount: options.length,
              itemBuilder: (context, index) {
                return Card(
                  margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  child: ListTile(
                    onTap: () {
                      Navigator.pushNamed(context, options[index]['route']);
                    },
                    leading: Icon(options[index]['icon']),
                    title: Text(options[index]['title']),
                    trailing: Icon(Icons.arrow_forward),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}