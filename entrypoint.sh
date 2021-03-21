#!/usr/bin/env bash

curl https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh > miniconda.sh && bash miniconda.sh -b -p /conda

/conda/bin/python /app/updater.py
