//Closures (익명함수)

func calculator(n1: Int, n2: Int, operation: (Int, Int) -> Int) -> Int {
    return operation(n1, n2)
}

func add (no1: Int, no2: Int) -> Int {
    return no1 + no2
}

//func multiply (no1: Int, no2: Int) -> Int {
//    return no1 * no2
//}

print(calculator(n1: 2, n2: 3, operation: add))
//print(calculator(n1: 2, n2: 3, operation: multiply))

// closure 사용법
// 코드는 짧아지지만 가독성이 떨어짐
print(calculator(n1: 2, n2: 3, operation: { (no1, no2) -> Int in
    return no1 * no2
}))
