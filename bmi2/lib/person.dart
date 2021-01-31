class Person {
  int id, age;
  String gender;
  double height, weight;
  Person({this.age, this.gender, this.height, this.weight, this.id});

  Person.frommap(Map<String, dynamic> data) {
    id = data['id'];
    age = data['age'];
    gender = data['gender'];
    height = data['height'];
    weight = data['weight'];
  }

  Map<String, dynamic> tomap() => {
        'id': id,
        'age': age,
        'gender': gender,
        'height': height,
        'weight': weight,
      };
}
