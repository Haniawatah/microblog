#!/bin/sh
# Run all tests, exec keeps the exit code from make so CI sees failing tests
exec make test
