class BioModel {
  String? title;
  String? titleTwo;
  int? id;


  BioModel(
      {this.title, this.titleTwo, this.id});

  BioModel.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    titleTwo = json['titleTwo'];
    id = json['id'];

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['titleTwo'] = this.titleTwo;
    data['id'] = this.id;

    return data;
  }
}
