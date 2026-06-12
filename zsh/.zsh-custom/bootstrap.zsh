#!/bin/zsh

local custom_dir="${0:a:h}"

for alias_file in $custom_dir/aliases/*(N); do
    source $alias_file
done
unset alias_file

for config_file in $custom_dir/config/*(N); do
    source $config_file
done
unset config_file

for completion_file in $custom_dir/completions/*(N); do
    source $completion_file
done
unset completion_file
