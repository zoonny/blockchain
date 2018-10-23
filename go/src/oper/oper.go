package main

func main() {

    var k int = 10
    var p = &k  //k의 주소를 할당
    println(*p)

    if k == 1 {
        println("One")
    } else if k == 10 {
        println("Ten")
    }

    switch k.(type) {
    case int:
        println("int")
    case bool:
        println("bool")
    case string:
        println("string")
    default:
        println("unknown")
    }

}
