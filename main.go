package main

import (
	"io"
	"log"
	"os"
	"os/exec"
)

func main() {
	f, err := os.CreateTemp("", "gitsqlite")
	if err != nil {
		log.Fatalln(err)
	}
	defer os.Remove(f.Name())
	switch os.Args[1] {
	case "smudge":
		// Reads sql commands from stdin and writes
		// the resulting binary sqlite3 database to stdout
		f.Close()
		cmd := exec.Command("sqlite3", f.Name())
		cmd.Stdin = os.Stdin
		if err := cmd.Run(); err != nil {
			log.Fatalln(err)
		}
		f, err = os.Open(f.Name())
		if err != nil {
			log.Fatalln(err)
		}
		defer f.Close()
		if _, err := io.Copy(os.Stdout, f); err != nil {
			log.Fatalln(err)
		}
	case "clean":
		// Reads a binary sqlite3 database from stdin
		// and dumps out the sql commands that created it
		// to stdout
		if _, err := io.Copy(f, os.Stdin); err != nil {
			log.Fatalln(err)
		}
		f.Close()
		cmd := exec.Command("sqlite3", f.Name(), ".dump")
		cmd.Stdout = os.Stdout
		if err := cmd.Run(); err != nil {
			log.Fatalln(err)
		}
	default:
		log.Fatalln("Unknown operation", os.Args[1])
	}
}
