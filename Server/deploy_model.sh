#!/bin/bash

# Train the global model
python update_seed_model.py

# Restart the server to load the new model
sudo systemctl restart bit-ml-server
