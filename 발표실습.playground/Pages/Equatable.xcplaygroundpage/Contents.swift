// MARK: Equatable 실습

// MARK: Equatable - Enum


// 연관값이 없는 Enum

//enum Mento {
//    case Jack
//    case Hue
//}
//
//Mento.Jack == Mento.Hue



// 연관값이 있는 Enum

//enum SeSAC: Equatable {
//    case Mento(name: String, age: Int)
//}
//
//SeSAC.Mento(name: "Jack", age: 23) != SeSAC.Mento(name: "Hue", age: 21)
//
//SeSAC.Mento(name: "Jack", age: 23) == SeSAC.Mento(name: "Jack", age: 21)
//
//SeSAC.Mento(name: "Jack", age: 23) == SeSAC.Mento(name: "Jack", age: 23)



// MARK: Equatable - Struct


//struct Mento: Equatable {
//    var name: String
//    var age: Int
//}
//var Jack = Mento(name: "Jack", age: 23)
//var Hue = Mento(name: "Hue", age: 21)
//var metabusJack = Mento(name: "Jack", age: 23)
//
//Jack == Hue
//Jack == metabusJack


// 만약 이름만 같아도 같은 인스턴스로 취급하게 해주고 싶다면?


// struct Mento: Equatable {
//    var name: String
//    var age: Int
//
//    // 직접 == 에 대해 정의하기
//    static func == (lhs: Self, rhs: Self) -> Bool {
//        return lhs.name == rhs.name
//    }
//}
//var Jack = Mento(name: "Jack", age: 23)
//var Hue = Mento(name: "Hue", age: 21)
//
//var metabusJack = Mento(name: "Jack", age: 46)
//var metabusHue = Mento(name: "Hue", age: 19)
//
//Jack == metabusJack
//Hue == metabusHue
//

// MARK: Equatable - Class

//
// class Mento: Equatable {
//     var name: String
//     var age: Int
//
//     init(name: String, age: Int) {
//         self.name = name
//         self.age = age
//     }
// }
// var Jack = Mento(name: "Jack", age: 23)
// var Hue = Mento(name: "Hue", age: 21)
//
// Jack == Hue
 

// 왜 오류가 날까?
// class vs struct
// == 의 의미 vs ===의 의미
// class는 인스턴스를 비교하는 항등연산자가 존재함 (===)
// 항등연산자의 의미 : Heap 영역의 값을 비교
// 비교연산자의 의미 : Stack 영역의 값을 비교
// class는 원칙적으로 동일성을 비교할 수 없고, == 을 사용하고 싶다면 개발자가 직접 구현해주어야 한다!!


 // 항등 연산자 class vs struct
//class Mento {
//    var name: String
//    var age: Int
//
//    init(name: String, age: Int) {
//        self.name = name
//        self.age = age
//    }
//}
//var Jack = Mento(name: "Jack", age: 23)
//var Hue = Mento(name: "Jack", age: 23)
//var metabusJack = Jack
//
//Jack === Hue
//Jack === metabusJack


//
//class Mento: Equatable {
//    
//    var name: String
//    var age: Int
//    
//    init(name: String, age: Int) {
//        self.name = name
//        self.age = age
//    }
//    
//    static func == (lhs: Mento, rhs: Mento) -> Bool {
//        return lhs.name == rhs.name && lhs.age == rhs.age
//    }
//}
// 
//var Jack = Mento(name: "Jack", age: 23)
//var Hue = Mento(name: "Hue", age: 21)
//
//Jack == Hue


