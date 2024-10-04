#!/bin/bash

# Compile the OCaml script
ocamlc -o rename_files rename_files.ml

# Run the generated executable to rename files
./rename_files

# Cleanup (optional)
rm rename_files
