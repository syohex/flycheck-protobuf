#! /bin/sh

DIR=`dirname "$1"`
protoc --error_format gcc --java_out=/tmp --proto_path $DIR "$1"
