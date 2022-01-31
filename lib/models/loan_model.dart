// To parse this JSON data, do
//
//     final loanModel = loanModelFromJson(jsonString);

import 'dart:convert';

List<LoanModel> loanModelFromJson(String str) => List<LoanModel>.from(json.decode(str).map((x) => LoanModel.fromJson(x)));

String loanModelToJson(List<LoanModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class LoanModel {
    LoanModel({
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

    factory LoanModel.fromJson(Map<String, dynamic> json) => LoanModel(
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
