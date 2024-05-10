package main

import "fmt"

func main() {
	var year int
	fmt.Println("enter a year...")
	fmt.Scanf("%d", &year)
	if year%4 == 0 && year%100 != 0 || year%400 == 0 {
		fmt.Printf("%d is leap year", year)
	} else {
		fmt.Printf("%d isn't leap year", year)
	}
}
