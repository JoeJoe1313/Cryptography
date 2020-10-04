let firstBox: [String] = ["*", "a"]
let secondBox: [String] = ["*", "m"]
let thirdBox: [String] = ["*", "a", "i"]
let fourthBox: [String] = ["*", "h", "k"]
let fifthBox: [String] = ["*", "e", "a"]
let sixthBox: [String] = ["*", "o", "s"]

func cartsian_product(lhs: [String], rhs: [String]) -> [String] {
    lhs.flatMap { left in
        rhs.map { right in
            "\(left)\(right)"
        }
    }
}

func multiple_cartesian_product(input: [[String]]) -> [String] {
    var result = [""]
    for arr in input {
        result = cartsian_product(lhs: result, rhs: arr)
    }
    return result
}

var myArray: [String] = multiple_cartesian_product(input: [firstBox, secondBox, thirdBox, fourthBox, fifthBox, sixthBox])

var myCount: Int
for element in myArray {
    myCount = 0
    for box in element {
        if box == "*" {
            xsmyCount += 1
        }
    }
    if myCount == 0 || myCount == 1 {
        print(element)
    }
}
