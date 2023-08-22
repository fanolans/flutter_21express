import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_21express/data/models/tracking_response_model.dart';

class ApiService {
  Future<Either<String, List<ResiInfo>>> getTrackingInfo(
    String resiNo,
  ) async {
    final response = await http.get(
      Uri.parse(
          'https://partner-api.21express.co.id/publics/tracking?resi_no=$resiNo'),
      headers: {
        'Sisco-Token':
            'AFHK/U9L0LSDYSZNQCX+JY3BUJG5LBUU/ZYMTTS2ONWST9JP6DCDRDP8JDUXFYUB',
        'Api-Key': 'X*kLJ=GDcA1q',
      },
    );

    if (response.statusCode == 200) {
      return Right(
        List<ResiInfo>.from(jsonDecode(response.body)),
      );
    } else {
      return const Left('something went wrong');
    }
  }
}
