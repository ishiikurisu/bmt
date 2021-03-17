package main

import (
    "bufio"
    "fmt"
    "log"
    "os"
    "strings"
    "strconv"
)

func main() {
    file, err := os.Open(os.Args[1])
    if err != nil {
        log.Fatal(err)
    }
    defer file.Close()

    scanner := bufio.NewScanner(file)
    firstLine := true
    score := 0

    for scanner.Scan() {
        line := scanner.Text()
        if !firstLine {
            fields := strings.Split(line, ",")
            s, _ := strconv.Atoi(fields[2])
            score += s
        }
        firstLine = false
    }

    fmt.Println(score)

    if err := scanner.Err(); err != nil {
        log.Fatal(err)
    }
}
