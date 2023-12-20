markov: markov.go
	go build -o markov markov.go

.PHONY: generate
generate: markov
	@zstdcat static/1m.txt.zst | ./markov -words 200 | fold -s -w 80

.PHONY: clean
clean:
	rm -f markov
