class model {
String? title;
String ?desc;
String ?img;

model({required this.title,required this.desc,required this.img});
  @override
  String toString() {
    return 'Title: $title\nDescription: $desc\nImage: $img\n';
  }
}