package main

import (
	"fmt"
	"sort"
)

func main() {

	var s string
	var t string

	fmt.Printf("Enter first string ....")
	fmt.Scanf("%s", &s)
	fmt.Printf("Enter first string ....")
	fmt.Scanf("%s", &t)

	source := []rune(s)
	sort.Slice(source, func(i, j int) bool {
		return source[i] < source[j]
	})
	target := []rune(t)
	sort.Slice(target, func(i, j int) bool {
		return target[i] < target[j]
	})

	for i := 0; i < len(source); i++ {
		if source[i] != target[i] {
			fmt.Printf("%s and %s are not anagram", s, t)
			break
		}
	}
	fmt.Printf("%s and %s are anagram", s, t)
}
