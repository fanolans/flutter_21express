import 'dart:convert';

class TrackingRequestModel {
  // ignore: non_constant_identifier_names
  final String resi_no;
  TrackingRequestModel({
    // ignore: non_constant_identifier_names
    required this.resi_no,
  });

  TrackingRequestModel copyWith({
    // ignore: non_constant_identifier_names
    String? resi_no,
  }) {
    return TrackingRequestModel(
      resi_no: resi_no ?? this.resi_no,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'resi_no': resi_no,
    };
  }

  factory TrackingRequestModel.fromMap(Map<String, dynamic> map) {
    return TrackingRequestModel(
      resi_no: map['resi_no'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory TrackingRequestModel.fromJson(String source) =>
      TrackingRequestModel.fromMap(json.decode(source));

  @override
  String toString() => 'TrackingRequestModel(resi_no: $resi_no)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is TrackingRequestModel && other.resi_no == resi_no;
  }

  @override
  int get hashCode => resi_no.hashCode;
}
