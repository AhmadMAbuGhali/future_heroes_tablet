class GymStandardModel {
  String? name;
  int? id;


  GymStandardModel({this.name, this.id});

  GymStandardModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    id = json['id'];

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['id'] = this.id;
    return data;
  }
}
