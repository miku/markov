markov: markov.go
	go build -o markov markov.go

.PHONY: clean
clean:
	rm -f markov
