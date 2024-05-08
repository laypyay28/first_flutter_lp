package main

import "fmt"

func ispalindrome(s string) bool {
	for i := 0; i < len(s)/2; i++ {
		if s[i] != s[len(s)-i-1] {
			return false
		}

	}
	return true
}
func main() {
	var s string
	fmt.Println("enter a string....")
	fmt.Scanf("%s", &s)
	fmt.Println(ispalindrome(s))
}
