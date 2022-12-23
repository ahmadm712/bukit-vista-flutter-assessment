// To parse this JSON data, do
//
//     final bookings = bookingsFromJson(jsonString);

import 'dart:convert';

BookingsModel bookingsFromJson(String str) =>
    BookingsModel.fromJson(json.decode(str));

String bookingsToJson(BookingsModel data) => json.encode(data.toJson());

class BookingsModel {
  BookingsModel({
    this.bookings,
  });

  List<Booking>? bookings;

  factory BookingsModel.fromJson(Map<String, dynamic> json) => BookingsModel(
        bookings: List<Booking>.from(
            json["bookings"].map((x) => Booking.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "bookings": List<dynamic>.from(bookings!.map((x) => x.toJson())),
      };
}

class Booking {
  Booking(
      {this.id,
      this.checkInDate,
      this.checkOutDate,
      this.totalReview,
      this.status,
      this.roomType,
      this.profileModel,
      this.hostModel,
      this.bookingStatus,
      this.totalBooking,
      this.bookingValue,
      this.unitName,
      this.totalGuest});

  String? id;
  String? checkInDate;
  String? checkOutDate;
  int? totalReview;
  String? status;
  String? roomType;
  ProfileModel? profileModel;
  HostModel? hostModel;
  String? bookingStatus;
  String? unitName;
  int? totalBooking;
  int? totalGuest;
  int? bookingValue;

  factory Booking.fromJson(Map<String, dynamic> json) => Booking(
        id: json["id"],
        checkInDate: json["checkInDate"],
        checkOutDate: json["checkOutDate"],
        totalReview: json["totalReview"],
        status: json["status"],
        roomType: json["roomType"],
        profileModel: ProfileModel.fromJson(json["profileModel"]),
        hostModel: HostModel.fromJson(json["hostModel"]),
        bookingStatus: json["bookingStatus"],
        totalBooking: json["totalBooking"],
        bookingValue: json["bookingValue"],
        totalGuest: json['totalGuest'],
        unitName: json['unitName'],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "checkInDate": checkInDate,
        "checkOutDate": checkOutDate,
        "totalReview": totalReview,
        "status": status,
        "roomType": roomType,
        "profileModel": profileModel!.toJson(),
        "hostModel": hostModel!.toJson(),
        "bookingStatus": bookingStatus,
        "totalBooking": totalBooking,
        "bookingValue": bookingValue,
      };
}

class HostModel {
  HostModel({
    this.id,
    this.hostName,
    this.hostProfileName,
    this.hostPropertyUnit,
    this.listingName,
  });

  String? id;
  String? hostName;
  String? hostProfileName;
  String? hostPropertyUnit;
  String? listingName;

  factory HostModel.fromJson(Map<String, dynamic> json) => HostModel(
        id: json["id"],
        hostName: json["hostName"],
        hostProfileName: json["hostProfileName"],
        hostPropertyUnit: json["hostPropertyUnit"],
        listingName: json["listingName"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "hostName": hostName,
        "hostProfileName": hostProfileName,
        "hostPropertyUnit": hostPropertyUnit,
        "listingName": listingName,
      };
}

class ProfileModel {
  ProfileModel({
    this.id,
    this.userName,
    this.profileStatus,
    this.imageUrl,
    this.location,
    this.note,
    this.journeyStatus,
    this.phoneNumber,
  });

  String? id;
  String? userName;
  String? profileStatus;
  String? imageUrl;
  String? location;
  String? note;
  List<String>? journeyStatus;
  String? phoneNumber;

  factory ProfileModel.fromJson(Map<String, dynamic> json) => ProfileModel(
        id: json["id"],
        userName: json["userName"],
        profileStatus: json["profileStatus"],
        imageUrl: json["imageUrl"],
        location: json["location"],
        note: json["note"],
        journeyStatus: List<String>.from(json["journeyStatus"].map((x) => x)),
        phoneNumber: json["phoneNumber"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "userName": userName,
        "profileStatus": profileStatus,
        "imageUrl": imageUrl,
        "location": location,
        "note": note,
        "journeyStatus": List<dynamic>.from(journeyStatus!.map((x) => x)),
        "phoneNumber": phoneNumber,
      };
}
