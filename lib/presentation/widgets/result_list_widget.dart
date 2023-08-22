import 'package:flutter/material.dart';

import 'package:flutter_21express/data/models/tracking_response_model.dart';

class ResultListWidget extends StatelessWidget {
  const ResultListWidget({
    Key? key,
    required this.result,
  }) : super(key: key);
  final ResiInfo result;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: ExpansionTile(
        collapsedIconColor: Colors.blue.shade800,
        title: Text(
          result.resiNo!,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
        children: [
          ListTile(
            title: Text(
              result.shipperName!,
              style: const TextStyle(
                fontSize: 14,
              ),
            ),
          ),
          ListTile(
            title: Text(
              result.cityDest!,
              style: const TextStyle(
                fontSize: 14,
              ),
            ),
          ),
          ListTile(
            title: Text(
              result.cityOrigin!,
              style: const TextStyle(
                fontSize: 14,
              ),
            ),
          ),
          ListTile(
            title: Text(
              result.consigneeName!,
              style: const TextStyle(
                fontSize: 14,
              ),
            ),
          ),
          ListTile(
            title: Text(
              result.lastStatusCode!,
              style: const TextStyle(
                fontSize: 14,
              ),
            ),
          ),
          ListTile(
            title: Text(
              result.serviceType!,
              style: const TextStyle(
                fontSize: 14,
              ),
            ),
          ),
          ListTile(
            title: Text(
              result.voided!,
              style: const TextStyle(
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
