class OffersModel {
  String? name;
  String? description;



  OffersModel(
      {this.name, this.description});

  OffersModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    description = json['description'];



  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = name;
    data['description'] = description;

    return data;
  }
}
