package main

import "fmt"

func main() {
	var in int
	fmt.Println("Enter the number")
	fmt.Scanf("%d", &in)
	for i := 2; i <= in; i++ {

		if i == 2 || i == 3 || i == 5 {
			fmt.Println(i)
		} else if i%2 != 0 && i%3 != 0 && i%5 != 0 {
			fmt.Println(i)
		}
	}
}
