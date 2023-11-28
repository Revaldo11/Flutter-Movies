class Person {
  final int id;
  final double popularity;
  final String name;
  final String profilePath;
  final String knownForDepartment;

  Person({
    required this.id,
    required this.popularity,
    required this.name,
    required this.profilePath,
    required this.knownForDepartment,
  });

  Person.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        popularity = json['popularity'],
        name = json['name'],
        profilePath = json['profile_path'],
        knownForDepartment = json['known_for_department'];
}
