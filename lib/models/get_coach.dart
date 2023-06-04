class GetCoach {
  String? id;
  String? email;
  String? imageString;
  String? fullName;
  bool? isActive;
  String? dateOfBirth;
  int? subCategoryId;
  SubCategory? subCategory;

  GetCoach(
      {this.id,
        this.email,
        this.imageString,
        this.fullName,
        this.isActive,
        this.dateOfBirth,
        this.subCategoryId,
        this.subCategory});

  GetCoach.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    email = json['email'];
    imageString = json['imageString'];
    fullName = json['fullName'];
    isActive = json['isActive'];
    dateOfBirth = json['dateOfBirth'];
    subCategoryId = json['subCategoryId'];
    subCategory = json['subCategory'] != null
        ? SubCategory.fromJson(json['subCategory'])
        : null;
  }


  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['email'] = this.email;
    data['imageString'] = this.imageString;
    data['fullName'] = this.fullName;
    data['isActive'] = this.isActive;
    data['dateOfBirth'] = this.dateOfBirth;
    data['subCategoryId'] = this.subCategoryId;
    if (this.subCategory != null) {
      data['subCategory'] = this.subCategory!.toJson();
    }
    return data;
  }
}

class SubCategory {
  String? name;
  int? categoryId;
  String? imageString;
  List<Coaches>? coaches;
  int? id;
  String? createdAt;


  SubCategory(
      {this.name,
        this.categoryId,
        this.imageString,
        this.coaches,
        this.id,
        this.createdAt,
        });

  SubCategory.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    categoryId = json['categoryId'];
    imageString = json['imageString'];
    if (json['coaches'] != null) {
      coaches = <Coaches>[];
      json['coaches'].forEach((v) {
        coaches!.add(new Coaches.fromJson(v));
      });
    }
    id = json['id'];
    createdAt = json['createdAt'];

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['categoryId'] = this.categoryId;
    data['imageString'] = this.imageString;
    if (this.coaches != null) {
      data['coaches'] = this.coaches!.map((v) => v.toJson()).toList();
    }
    data['id'] = this.id;
    data['createdAt'] = this.createdAt;
    return data;
  }
}

class Coaches {
  String? email;
  String? userName;
  String? fullName;
  String? imageString;
  String? membershipNo;

  Coaches(
      {this.email,
        this.userName,
        this.fullName,
        this.imageString,
        this.membershipNo});

  Coaches.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    userName = json['userName'];
    fullName = json['fullName'];
    imageString = json['imageString'];
    membershipNo = json['membershipNo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['email'] = this.email;
    data['userName'] = this.userName;
    data['fullName'] = this.fullName;
    data['imageString'] = this.imageString;
    data['membershipNo'] = this.membershipNo;
    return data;
  }
}
