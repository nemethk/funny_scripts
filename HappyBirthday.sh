#!/bin/bash

echo -n "Enter the name and press [ENTER]: "
read NAME;

COUNTER=0;

while [[ $COUNTER -eq 0 ]]; do

        COUNTER=$(( $COUNTER + 1 ))
        echo -e "Choose a singer. \n1 - cow \n2 - tux"
        echo -n "Type 1 or 2 and press [ENTER]: "
        read ANIMAL;

        if [[ $ANIMAL = 1 ]]; then
                ANIMALSAY="cowsay"
        elif [[ $ANIMAL = 2 ]]; then
                ANIMALSAY="cowsay -f tux"
        else
                echo "Sorry, the chosen singer is not available today."
                COUNTER=0
                sleep 2
        fi
done

$ANIMALSAY $(for (( i = 0; i < 4; i++ )); do
                if [[ $i = 2 ]]; then
                        echo -e "Happy birthday dear $NAME!"
                else
                        echo -e "Happy birthday to you!"
                fi
        done)

echo "---~~~ˇ\|/~~~~~~~~ˇ\|/~~~~~~~~ˇ\|/~~~---"
