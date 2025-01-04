# Default target to run if no specific target
.DEFAULT_GOAL := build

# Tasks to run, not files to create
.PHONY: fmt vet build
fmt:
	go fmt ./...

vet: fmt
	go vet ./...

build: vet
	go build