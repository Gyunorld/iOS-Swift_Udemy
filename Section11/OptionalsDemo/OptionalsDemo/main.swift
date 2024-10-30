// 옵셔널 사용법
//let myOptional: String?

//myOptional = "Angela"
//myOptional = nil


// Force Unwrapping
//let text: String = myOptional!
// -> nil일 경우 build는 되지만 실행 시 오류발생

// if문으로 검증하기
//if myOptional != nil {
//    let text: String = myOptional!
//} else {
//    print("myOptional is nil!")
//}

// Optional Binding
//if let safeOptional = myOptional {
//    let text: String = safeOptional
//    let text2: String = safeOptional
//    print(safeOptional)
//} else {
//    print("myOptional is nil!")
//}

// nil coalescing operator
// optional ?? defaultValue
//let text: String = myOptional ?? "defaultValue"
//print(text)

// 구조체에서 Optional인 경우
struct MyOptional {
    var property = 123
    func method() {
        print("I am the sturct's method.")
    }
}

let myOptional: MyOptional?

myOptional = nil

// Optional Chaining 사용
print(myOptional?.property)

