default: all

all: run clean

generate_input:
	ruby create_input.rb > input.txt

build:
	go build -o task_go.exe task.go

run: build generate_input
	ruby test.rb

clean:
	rm input.txt
