#!/bin/bash

# "Felteteles vegrehajtas: case"

case $1 in
    "")
        echo "nem adtad meg a napot"
    ;;
    "hetfo")
	echo "hetfo van"
    ;;
    "kedd")
	echo "kedd van"
    ;;
    "szerda")
        echo "szerda van"
    ;;
    "csutortok")
        echo "csutortok van"
    ;;
    "pentek")
        echo "pentek van"
    ;;
    "szombat")
        echo "szombat van"
    ;;
    *)
	echo "Ez most mi a fene?"
    exit 1
esac