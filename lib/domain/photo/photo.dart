class Photo {
  int id;
  String name;
  String path;

  Photo({required this.id, required this.name, required this.path});

  // Photo.fromMap(Map<String, dynamic> map) {
  //   this.id = map["id"];
  //   this.name = map["name"];
  //   this.path = map["path"];
  // }

  Map<String, dynamic> toMap() => {
        'name': name,
        'path': path,
      };
}
