#!/bin/zsh

for alias_file in aliases/*(N); do
    source $alias_file
done
unset alias_file

for config_file in config/*(N); do
    source $config_file
done
unset config_file

for complation_file in completions/*(N); do
    source $complation_file
done
unset complation_file
