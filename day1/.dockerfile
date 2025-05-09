FROM scratch as blah

# Create directory and copy file into it
COPY bonjour.txt /something/bonjour.txt

FROM golang:latest
# Copy the entire /something directory with its contents
COPY --from=blah /something /something
COPY go.mod /
COPY main.go /
WORKDIR /
ENTRYPOINT [ "go", "run", "main.go" ]