default: run

build:
	go build -o task_go.exe task.go 

run: build
	ruby test.rb
