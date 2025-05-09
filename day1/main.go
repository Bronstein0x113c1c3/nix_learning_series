package main

import (
	"fmt"
	"log"
	"os"
)

func main() {
	// fmt.Println("something")
	data, err := os.ReadFile("/something/bonjour.txt")
	if err != nil {
		log.Fatalln("failed opening file")
	}
	fmt.Println(string(data))
}
