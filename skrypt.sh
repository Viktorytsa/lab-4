#!/bin/bash

show_date() {
    date
}

case "$1" in
    --date)
        show_date
        ;;
esac

