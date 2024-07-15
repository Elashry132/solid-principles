//1. abstract shape class
abstract class Shape {
  // String type;
  // Shape(this.type);
  double calculateArea();
}

//this violates open closed principle
// the class was not closed for modification
// class AreaCalculator {
//   double calculateArea(Shape shape){
//     if (shape.type == 'circale') {
//       // calculate the area of circale
//     }
//     else if(shape.type == 'square'){
//       // calculate the area of square
//     }
//     //..
//   }
// }

class Circale extends Shape {
  double raduis;
  Circale(this.raduis);
  @override
  double calculateArea() {
    // calculate cirvale area
    return 3.14 * raduis * raduis;
  }
}

class Triangle extends Shape {
  double side;
  Triangle(this.side);
  @override
  double calculateArea() {
    return side * side;
  }
}

class AreaCalculator {
  double calculateArea(Shape shape){
    return shape.calculateArea();
  }
}
