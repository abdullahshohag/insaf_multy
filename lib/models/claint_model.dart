// To parse this JSON data, do
//
//     final claintModel = claintModelFromJson(jsonString);

import 'dart:convert';

List<ClaintModel> claintModelFromJson(String str) => List<ClaintModel>.from(json.decode(str).map((x) => ClaintModel.fromJson(x)));

String claintModelToJson(List<ClaintModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ClaintModel {
    ClaintModel({
        this.id,
        this.name,
        this.desiganation,
        this.address,
        this.image,
    });

    int? id;
    String? name;
    String? desiganation;
    String? address;
    String? image;

    factory ClaintModel.fromJson(Map<String, dynamic> json) => ClaintModel(
        id: json["id"],
        name: json["name"],
        desiganation: json["desiganation"],
        address: json["address"],
        image: json["image"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "desiganation": desiganation,
        "address": address,
        "image": image,
    };
}
