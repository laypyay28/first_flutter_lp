package main

import (
	"fmt"
	"math"
)

func minCoins(coins []int, amount int) int {

	dp := make([]int, amount+1)

	for i := range dp {
		dp[i] = math.MaxInt32
	}

	dp[0] = 0

	for _, coin := range coins {

		for i := coin; i <= amount; i++ {

			dp[i] = min(dp[i], dp[i-coin]+1)
		}
	}

	if dp[amount] == math.MaxInt32 {
		return -1
	}
	return dp[amount]
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func main() {
	var numCoins int
	var amount int
	fmt.Print("Enter the number of coins : ")
	fmt.Scanf("%d", &numCoins)
	coins := make([]int, numCoins)
	for i := 0; i < numCoins; i++ {
		fmt.Printf("enter value of coin %d : ", i+1)
		fmt.Scanf("%d", &coins[i])
	}

	fmt.Printf("Enter the amount : ")
	fmt.Scanf("%d", &amount)
	final := minCoins(coins, amount)
	if final < 0 {
		fmt.Print("You can't buy anything lol haha")
	} else {
		fmt.Printf("Minimum number of coins needed: %d\n", final)
	}
}
