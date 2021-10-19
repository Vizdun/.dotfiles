#!/bin/bash
cols=64

cols=$((cols-17))
fcols=$((cols/4))
scols=$((cols-fcols))

colorPri="\033[0;31m"
colorSec="\033[0;34m"
colorTet="\033[0;37m"

printSimpleLine() {
    for i in $(seq 1 $fcols); do printf "$2$1"; done
    printf "$3"
    for i in $(seq 1 $scols); do printf "$2$1"; done
    printf "\n"
}

printSimpleLine "#" "$colorSec" "#################"
printSimpleLine "#" "$colorSec" "#################"
printSimpleLine "=" "$colorTet" "================="
printSimpleLine "O" "$colorPri" "OOOOOOOOOOOOOOOOO"

printSimpleLine "O" "$colorPri" "${colorPri}OOOO${colorTet}###${colorPri},O,${colorTet}###${colorPri}OOOO"
printSimpleLine "O" "$colorPri" "${colorPri}OO${colorTet}####${colorPri},OOO,${colorTet}####${colorPri}OO"
printSimpleLine "O" "$colorPri" "\'oooooOOOOOooooo\'"
printSimpleLine "O" "$colorPri" "${colorTet}##${colorPri}\`OOOOOOOOOOO\`${colorTet}##"
printSimpleLine "O" "$colorPri" "${colorTet}####${colorPri}\`OOOOOOO\`${colorTet}####"
printSimpleLine "O" "$colorPri" "${colorTet}####${colorPri}OOOO'OOOO${colorTet}####"
printSimpleLine "O" "$colorPri" "${colorPri}O${colorTet}##${colorPri}OOO'${colorTet}###${colorPri}'OOO${colorTet}##${colorPri}O"
printSimpleLine "O" "$colorPri" "${colorPri}OOO'${colorTet}#########${colorPri}'OOO"

printSimpleLine "O" "$colorPri" "OOOOOOOOOOOOOOOOO"
printSimpleLine "=" "$colorTet" "================="
printSimpleLine "#" "$colorSec" "#################"
printSimpleLine "#" "$colorSec" "#################"

printf "\033[0;0m"
