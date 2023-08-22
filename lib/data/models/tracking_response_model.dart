class TrackingResponseModel {
  Express21? express21;
  Status? status;

  TrackingResponseModel({this.express21, this.status});

  TrackingResponseModel.fromJson(Map<String, dynamic> json) {
    express21 = json['express21'] != null
        ? Express21.fromJson(json['express21'])
        : null;
    status = json['status'] != null ? Status.fromJson(json['status']) : null;
  }
}

class Express21 {
  Results? results;

  Express21({this.results});

  Express21.fromJson(Map<String, dynamic> json) {
    results =
        json['results'] != null ? Results.fromJson(json['results']) : null;
  }
}

class Results {
  List<ResiInfo>? resiInfo;
  ShipmentDetail? shipmentDetail;
  int? totalRecords;
  List<TrackingStatusDetail>? trackingStatusDetail;

  Results({
    this.resiInfo,
    this.shipmentDetail,
    this.totalRecords,
    this.trackingStatusDetail,
  });

  Results.fromJson(Map<String, dynamic> json) {
    if (json['resi_info'] != null) {
      resiInfo = <ResiInfo>[];
      json['resi_info'].forEach((v) {
        resiInfo!.add(ResiInfo.fromJson(v));
      });
    }
    shipmentDetail = json['shipment_detail'] != null
        ? ShipmentDetail.fromJson(json['shipment_detail'])
        : null;
    totalRecords = json['total_records'];
    if (json['tracking_status_detail'] != null) {
      trackingStatusDetail = <TrackingStatusDetail>[];
      json['tracking_status_detail'].forEach((v) {
        trackingStatusDetail!.add(TrackingStatusDetail.fromJson(v));
      });
    }
  }
}

class ResiInfo {
  String? cityDest;
  String? cityOrigin;
  String? consigneeName;
  String? lastStatusCode;
  String? resiNo;
  String? serviceType;
  String? shipperName;
  String? voided;

  ResiInfo({
    this.cityDest,
    this.cityOrigin,
    this.consigneeName,
    this.lastStatusCode,
    this.resiNo,
    this.serviceType,
    this.shipperName,
    this.voided,
    required faq,
  });

  ResiInfo.fromJson(Map<String, dynamic> json) {
    cityDest = json['city_dest'];
    cityOrigin = json['city_origin'];
    consigneeName = json['consignee_name'];
    lastStatusCode = json['last_status_code'];
    resiNo = json['resi_no'];
    serviceType = json['service_type'];
    shipperName = json['shipper_name'];
    voided = json['voided'];
  }
}

class ShipmentDetail {
  String? consigneeAddress;
  String? consigneeName;
  String? consigneePhone;
  String? customerName;
  String? dateProcess;
  String? destCity;
  String? fulfilment;
  double? goodsValue;
  String? isi;
  String? natureOfGoods;
  String? note;
  String? originCity;
  String? paymentMethod;
  String? resiNo;
  String? serviceType;
  String? status;
  double? totalCod;
  double? ttlChargeableWeight;
  int? ttlPiece;

  ShipmentDetail({
    this.consigneeAddress,
    this.consigneeName,
    this.consigneePhone,
    this.customerName,
    this.dateProcess,
    this.destCity,
    this.fulfilment,
    this.goodsValue,
    this.isi,
    this.natureOfGoods,
    this.note,
    this.originCity,
    this.paymentMethod,
    this.resiNo,
    this.serviceType,
    this.status,
    this.totalCod,
    this.ttlChargeableWeight,
    this.ttlPiece,
  });

  ShipmentDetail.fromJson(Map<String, dynamic> json) {
    consigneeAddress = json['consignee_address'];
    consigneeName = json['consignee_name'];
    consigneePhone = json['consignee_phone'];
    customerName = json['customer_name'];
    dateProcess = json['dateprocess'];
    destCity = json['dest_city'];
    fulfilment = json['fulfilment'];
    goodsValue = json['goods_value'];
    isi = json['isi'];
    natureOfGoods = json['nature_of_goods'];
    note = json['note'];
    originCity = json['origin_city'];
    paymentMethod = json['payment_method'];
    resiNo = json['resi_no'];
    serviceType = json['service_type'];
    status = json['status'];
    totalCod = json['total_cod'];
    ttlChargeableWeight = json['ttl_chargeable_weight'];
    ttlPiece = json['ttl_piece'];
  }
}

class TrackingStatusDetail {
  String? branchCode;
  String? branchName;
  String? dateProcess;
  String? status;
  String? statusBy;
  String? statusNote;

  TrackingStatusDetail({
    this.branchCode,
    this.branchName,
    this.dateProcess,
    this.status,
    this.statusBy,
    this.statusNote,
  });

  TrackingStatusDetail.fromJson(Map<String, dynamic> json) {
    branchCode = json['branch_code'];
    branchName = json['branch_name'];
    dateProcess = json['dateprocess'];
    status = json['status'];
    statusBy = json['status_by'];
    statusNote = json['status_note'];
  }
}

class Status {
  int? errorCode;
  String? errorMessage;
  String? message;
  int? statusCode;

  Status({
    this.errorCode,
    this.errorMessage,
    this.message,
    this.statusCode,
  });

  Status.fromJson(Map<String, dynamic> json) {
    errorCode = json['error_code'];
    errorMessage = json['error_message'];
    message = json['message'];
    statusCode = json['status_code'];
  }
}
