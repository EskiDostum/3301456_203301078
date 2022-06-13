// hackathonda yazılan code alınmıştır

class Report {
  final int? id;
  final String name;
  final String email;
  final String password;

  Report({
    this.id,
    required this.name,
    required this.email,
    required this.password,
  });
  Report.fromMap(Map<String, dynamic> res)
      : id = res["id"],
        name = res["name"],
        email = res["email"],
        password = res["password"];
  Map<String, Object?> toMap() {
    return {"id": id, "name": name, "email": email, "password": password};
  }
}
