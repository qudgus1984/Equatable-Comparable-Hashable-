// MARK: Hashable 실습

// MARK: Hashable - Enum
// 연관값이 없는 Enum

//
//enum Mento {
//    case Jack
//    case Hue
//}
//
//let SeSACMento: Set = [Mento.Jack, Mento.Hue]

 



 // 연관값이 있는 Enum
// enum SeSAC: Hashable {
// case Mento(name: String, age: Int)
// }
//
// let SeSACMento: Set = [ SeSAC.Mento(name: "Jack", age: 23), SeSAC.Mento(name: "Hue", age: 21)]
 

// MARK: Hashable - Struct

 // 기본으로 채택했을 때
//struct Mento: Hashable {
//    var name: String
//    var age: Int
//}
//var Jack = Mento(name: "Jack", age: 23)
//var Hue = Mento(name: "Hue", age: 21)
//
//var metabusJack = Mento(name: "Jack", age: 23)
//
//let SeSACMento: Set = [Jack, Hue, metabusJack]




 // 만약 이름으로만 hashable한지 판단하고 싶다면?
//struct Mento: Hashable {
//    var name: String
//    var age: Int
//
//    func hash(into hasher: inout Hasher) {
//        hasher.combine(name)
//    }
//
//    static func == (lhs: Mento, rhs: Mento) -> Bool {
//        return lhs.name == rhs.name
//    }
//}
//var Jack = Mento(name: "Jack", age: 23)
//var Hue = Mento(name: "Hue", age: 21)
//var metabusJack = Mento(name: "Jack", age: 63)
//
//let SeSACMento: Set = [Jack, Hue, metabusJack]
//Jack == metabusJack


// MARK: Hashable - Class

 // Equatable / Hashable 둘 다 판단해주어야 함
//class Mento: Hashable {
//    var name: String
//    var age: Int
//    
//    init(name: String, age: Int) {
//        self.name = name
//        self.age = age
//    }
//    func hash(into hasher: inout Hasher) {
//        hasher.combine(name)
//    }
//    
//    static func == (lhs: Mento, rhs: Mento) -> Bool {
//        return lhs.name == rhs.name
//    }
//}
//var Jack = Mento(name: "Jack", age: 23)
//var Hue = Mento(name: "Hue", age: 21)
//var metabusJack = Mento(name: "Jack", age: 63)
//
//let SeSACMento: Set = [Jack, Hue, metabusJack]
//Jack == metabusJack

