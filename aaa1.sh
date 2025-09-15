#
#  
#  Author Rybochkin Aleksei
#  September 2025
#
#  




###  1 
function a() {
echo " "
#read filename

isql-fb -input 1.sql
#$filename



#isql-fb CREATE DATABASE './1.fdb' \
#USER 'SYSDBA' PASSWORD 'masterkey' \
#PAGE_SIZE 16384 \
#DEFAULT CHARACTER SET UNICODE_FSS;



}




###   2 
function b() { 
echo "  "
isql-fb -input 1.sql

}

###   3 - 
function c() { 
echo " Установить нужные пакеты для firebird 3 "

apt-get update
apt-get install firebird3.0-server-core \
firebird3.0-common \
firebird-dev \
firebird3.0-common-doc \
firebird3.0-server \
firebird3.0-utils \
firebird3.0-examples \
firebird3.0-doc 
apt-get check

mk-build-deps --install

# echo yes | mk-build-deps -ri ## для установки без вопросов

echo " "
exit 0
}




### - 4 ВЫХОД ИЗ СКРИПТА
function d() { 
echo " ВЫХОД ИЗ СКРИПТА "
echo " 4 Exit ..."
exit 0
}


### - 5 
function e() { 
echo "  "


}


function mainn() {
echo " 1 - Создать базу в текущем каталоге   "
echo " 2 - Создать вторую базу в текущем каталоге    "
echo " 3 - Установить нужные пакеты для сборки  "
echo " 4 - Exit  "
echo " 5 -  "


echo " Введите значение ... "
main
}

function main() {

read number

case $number in

1) a
;;
2) b
;;
3) c
;;
4) d
;;
5) e
;;

*) mainn
;;
esac
}



#! /bin/bash
### ГЛАВНОЕ МЕНЮ 
echo " "
echo "  "
echo "  Выберите действие...  "
mainn
