class Plans {
  String? name;
  String? description;
  String? imageString;
  int? id;


  Plans(
      {this.name,
        this.description,
        this.imageString,
        this.id,
      });

  Plans.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    description = json['description'];
    imageString = json['imageString'];
    id = json['id'];

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['description'] = this.description;
    data['imageString'] = this.imageString;
    data['id'] = this.id;

    return data;
  }
}
