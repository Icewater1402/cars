#! /bin/bash
#cars.sh
#Christopher Isidro
INPUT="0"
while [ "$INPUT" -ne "3" ]
do
        echo "Type 1 to Add a car"
        echo "Type 2 to List the cars in the inventory file"
        echo "Type 3 to Quit the program"
        read -r INPUT
        case "$INPUT" in
                "1") echo "Year of the car: "
                read -r YEAR
                echo "Make of the car: "
                read -r MAKE
                echo "Model of the car: "
                read -r MODEL
                NEWCAR="$YEAR:$MAKE:$MODEL"
                echo "$NEWCAR" >> My_old_cars;;
                "2") sort My_old_cars;;
                "3") echo "Have a nice day!";;
                *) echo "That is not a valid input. Try again.";;
        esac
done

