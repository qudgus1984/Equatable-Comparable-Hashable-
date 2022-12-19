// MARK: Comparable 실습

// MARK: Comparable - Enum


 // 원시값이 없는 Enum

//enum Mento: Comparable {
//    case Hue
//    case Jack
//
//}
//
//Mento.Jack > Mento.Hue



  //원시값이 있는 Enum
//enum Mento: Int {
//    case Jack
//    case Hue
//}
//
//extension Mento: Comparable {
//    static func < (lhs: Mento, rhs: Mento) -> Bool {
//        return lhs.rawValue < rhs.rawValue
//    }
//}
//
//Mento.Jack > Mento.Hue


// MARK: Comparable - Struct


 // Comparable만 채택해준다면?
//struct Mento: Comparable {
//    var name: String
//    var age: Int
//}
//var Jack = Mento(name: "Jack", age: 23)
//var Hue = Mento(name: "Hue", age: 21)
//
//Jack > Hue



// 어떠한 기준으로 대소를 비교할 것인지 직접 정의해주어야 함!!
// 나이로 비교하고 싶다면?
//struct Mento: Comparable {
//    var name: String
//    var age: Int
//
//    static func < (lhs: Mento, rhs: Mento) -> Bool {
//        return lhs.age < rhs.age
//    }
// }
//var Jack = Mento(name: "Jack", age: 23)
//var Hue = Mento(name: "Hue", age: 21)
//
//Jack > Hue


// MARK: Comparable - Class

//class Mento: Comparable {
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
//    
//    static func < (lhs: Mento, rhs: Mento) -> Bool {
//        return lhs.age < rhs.age
//    }
//}
//var Jack = Mento(name: "Jack", age: 23)
//var Hue = Mento(name: "Hue", age: 21)
//
//Jack > Hue
//
