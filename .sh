#!/bin/bash

# Compile the OCaml script
ocamlc -o generate_files generate_files.ml

# Run the generated executable to create random files
./generate_files

# Cleanup (optional)
rm generate_files
