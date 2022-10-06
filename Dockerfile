FROM alpine:latest

RUN mkdir run/templates
RUN mkdir run/data
CMD echo "Belajar RUN" > 'run/README.txt'
