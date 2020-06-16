let firstBox: [Character] = ["*", "a"]
let secondBox: [Character] = ["*", "m"]
let thirdBox: [Character] = ["*", "a", "i"]
let fourthBox: [Character] = ["*", "h", "k"]
let fifthBox: [Character] = ["*", "e", "a"]
let sixthBox: [Character] = ["*", "o", "s"]

var myCount: Int

for first in firstBox {
    for second in secondBox {
        for third in thirdBox {
            for fourth in fourthBox {
                for fifth in fifthBox {
                    for sixth in sixthBox {
                        myCount = 0
                        for box in "\(first)\(second)\(third)\(fourth)\(fifth)\(sixth)" {
                            if box == "*" {
                                myCount += 1
                            }
                        }
                        if myCount == 0 || myCount == 1 {
                                print("\(first)\(second)\(third)\(fourth)\(fifth)\(sixth)")
                        }
                    }
                }
            }
        }
    }
}
