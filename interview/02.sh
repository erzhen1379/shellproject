#!/bin/bash

awk '{sum+=$2} END{print "求和: "sum}' file2.txt