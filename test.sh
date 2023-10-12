#!/bin/bash
read -p "Enter the answer in Y/N: " ANSWER
case "$ANSWER" in
  [yY] | [yY][eE][sS])
    make
    echo "The Answer is Yes : Do make"
    ;;
  [nN] | [nN][oO])
    echo "The Answer is No : Do make clean"
    make clean
    ;;
  *)
    echo "Invalid Answer :/"
    ;;
esac