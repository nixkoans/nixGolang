package main

import (
	"fmt"
	"github.com/kr/pty"
	"io"
	"os"
	"os/exec"
)

func main() {
	fmt.Println("hello world")

	c := exec.Command("grep", "--color=auto", "bar")
	f, err := pty.Start(c)
	if err != nil {
		panic(err)
	}

	go func() {
		f.Write([]byte("foo\n"))
		f.Write([]byte("bar\n"))
		f.Write([]byte("baz\n"))
		f.Write([]byte{4})
	}()
	io.Copy(os.Stdout, f)
}
