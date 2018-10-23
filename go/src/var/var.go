package main

func main() {
    var a int
    var f float32 = 11.
    a = 10
    f = 12.0
    println(a)
    println(f)

    var i bool
    var j string
    var k int
    println(i)
    println("[" + j + "]")
    println(k)

    var l, m, n int = 1, 2, 3
    println(l)
    println(m)
    println(n)

    const c int = 10
    const s string = "Hi";

    const (
        Visa = "Visa"
        Master = "MasterCard"
    )

    println(Visa)
    println(Master)
}
