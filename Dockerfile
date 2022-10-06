FROM alpine:latest

RUN mkdir run/templates
RUN mkdir run/data
RUN echo "Belajar RUN" > 'run/README.txt'