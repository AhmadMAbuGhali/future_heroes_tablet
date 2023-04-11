class SubCategoryModel {
  String? name;

  String? imageString;


  SubCategoryModel(
      {this.name,

        this.imageString,
      });

  SubCategoryModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];

    imageString = json['imageString'];

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['imageString'] = this.imageString;

    return data;
  }
}
