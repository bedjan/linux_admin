#!/bin/bash

echo "Teplota CPU:"
sensors | grep "Package id 0"

echo "Teplota GPU:"
nvidia-smi --query-gpu=temperature.gpu --format=csv,noheader
