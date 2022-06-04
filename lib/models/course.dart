class Course {
  String author;
  String authorImg;
  String title;
  String imageUrl;
  Course(this.author, this.authorImg, this.title, this.imageUrl);
  static List<Course> generateCourses() {
    return [
      Course('Edwin Diaz', 'assets/images/course01.png', 'Python from scratch',
          'assets/icons/python01.png'),
      Course('Dr. Angela Yu', 'assets/images/course01.png',
          '100 days of coding', 'assets/icons/course03.jpg')
    ];
  }
}
