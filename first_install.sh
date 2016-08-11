#!/bin/bash

sudo apt install python3

if [ -f "get-pip.py" ]; then
	echo 'Already download !'
else
	wget https://bootstrap.pypa.io/get-pip.py && sudo python get-pip.py && rm get-pip.py
fi

requests=`pip list | grep "requests"`
tabulate=`pip list | grep "tabulate"`
if [ -z "$requests" ]; then
	pip install requests
fi
if [ -z "$tabulate" ]; then
	pip install tabulate
fi

