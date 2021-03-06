#! /bin/zsh
# A script for making Solarized colors easier to use
# Janne Asmala <janne@asmala.name>

typeset -gA solarized

solarized=(
  base03  $'\e[90m'
  base02  $'\e[30m'
  base01  $'\e[92m'
  base00  $'\e[93m'
  base0   $'\e[94m'
  base1   $'\e[96m'
  base2   $'\e[37m'
  base3   $'\e[97m'
  yellow  $'\e[33m'
  orange  $'\e[91m'
  red     $'\e[31m'
  magenta $'\e[35m'
  violet  $'\e[95m'
  blue    $'\e[34m'
  cyan    $'\e[36m'
  green   $'\e[32m'

  reset   $'\e[0m'
)
