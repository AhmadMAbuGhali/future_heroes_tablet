class ContactUs {
  String? phoneNumber;
  String? email;
  String? region;
  String? faceBook;
  String? instagram;
  String? twitter;
  int? id;


  ContactUs(
      {this.phoneNumber,
        this.email,
        this.region,
        this.faceBook,
        this.instagram,
        this.twitter,
        this.id,
 });

  ContactUs.fromJson(Map<String, dynamic> json) {
    phoneNumber = json['phoneNumber'];
    email = json['email'];
    region = json['region'];
    faceBook = json['faceBook'];
    instagram = json['instagram'];
    twitter = json['twitter'];
    id = json['id'];

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['phoneNumber'] = this.phoneNumber;
    data['email'] = this.email;
    data['region'] = this.region;
    data['faceBook'] = this.faceBook;
    data['instagram'] = this.instagram;
    data['twitter'] = this.twitter;
    data['id'] = this.id;

    return data;
  }
}
