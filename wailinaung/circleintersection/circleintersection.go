package main

import (
	"fmt"
	"math"
)

func main() {
	var x1 float64
	var y1 float64
	var x2 float64
	var y2 float64
	var r1 float64
	var r2 float64

	fmt.Println("enter the x , y and ridius of circle 1 ")
	fmt.Scanf("%f %f %f", &x1, &y1, &r1)
	fmt.Println("enter the x , y and ridius of circle 2")
	fmt.Scanf("%f %f %f", &x2, &y2, &r2)

	var c1c2 = math.Sqrt(math.Pow(x1-x2, 2) + math.Pow(y1-y2, 2))
	if c1c2 <= r1-r2 {
		fmt.Println("Circle B is inside A")
	}
	if c1c2 <= r2-r1 {
		fmt.Println("Circle A is inside B")
	}
	if c1c2 < r1+r2 {
		fmt.Println("Circle intersects each others.")
	}
	if c1c2 == r1+r2 {
		fmt.Println("circle A and B are in touch with each other")
	}
}
