#!/bin/bash
conda init /bin/bash
conda activate mytensorflow
jupyter notebook --ip=10.128.0.3 --allow-root
