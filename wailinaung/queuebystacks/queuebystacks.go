package main

import (
	"bufio"
	"fmt"
	"os"
	"strings"
)

func main() {
	reader := bufio.NewReader(os.Stdin)
	fmt.Println("enter a string")
	input, err := reader.ReadString('\n')
	if err != nil {

		fmt.Print(err)
		return
	}
	input = strings.TrimSpace(input)
	fmt.Printf("%s", reverse(input))

}
func reverse(str string) string {
	runes := []rune(str)
	var stack []rune
	stack = append(stack, runes...)
	var reversed string
	for i := len(stack) - 1; i >= 0; i-- {
		reversed += string(stack[i])
	}
	return reversed
}
