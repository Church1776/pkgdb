#!/usr/bin/zsh

args=("$@")
targs=()

for arg in "${args[@]}"; do
  case $arg in
    --*) OPT_TYPE="long";;
    -*) OPT_TYPE="short";;
    html) BUILD_MODE="html";;
    *)echo "unknown option.";;
  esac
  targs=("$arg")
  if [[ "$OPT_TYPE" == "short" ]]; then
    chars=(${(%s..)targs#-})
    targs=()
    for c in "${chars}"; do
      case "$c" in
        a) targs+=("--all");;
        h) targs+=("--help");;
        v) targs+=("--version");;
        *) echo "Unknown argument: '-$c'";;
      esac
    done
    OPT_TYPE="long"
  fi
  if [[ "$OPT_TYPE" == "long" ]]; then
    for ta in "${targs}"; do
      case "${ta#--}" in
        help) echo "Not implemented yet.";;
        version) echo "Not implemented yet.";;
        *) echo "Unknown argument: '$ta'";;
      esac
    done
  fi
done
unset targs
if [[ ${zsh_eval_context[-1]} == file ]]; then
  printf '%s\n' \
  'This file is not meant to be sourced.' \
  'Execute this file for correct usage.'
  return
fi

pkgdb_root="$(git rev-parse --show-toplevel)"
if [[ $pkgdb_root == [a-zA-Z]':'* ]]; then
  if [[ ${+commands[cygpath]} ]]; then
    pkgdb_root="$(cygpath -u $pkgdb_root)"
  fi
fi

if [[ $PWD != $pkgdb_root ]]; then
  cd $pkgdb_root
fi
