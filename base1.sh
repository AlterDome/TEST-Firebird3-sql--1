#
#  
#  Author Rybochkin Aleksei
#  September 2025
#
#  



# base
###  1 
function aa() {
echo " "
echo " 1 - Установить firebird и sql в Debian 12 "

apt-get check
apt-get install firebird3.0-server-core \
firebird3.0-common \
firebird-dev \
firebird3.0-common-doc \
firebird3.0-server \
firebird3.0-utils \
firebird3.0-examples \
firebird3.0-doc \
sqlcl-package \
sqlite3-doc \
sqlreduce \
sqlformat \
sqldeveloper-package \
sqlfluff \
sqlmap \
sqlline \
sqlobject-admin \
sqlcipher \
sqlite3-tools \
sqlgrey \
sqlite-utils \
sqlitebrowser \
sqlite3-pcre \
sqlsmith \
sqlite3 \
sqlfluff-doc \
sqlite-modern-cpp-dev \
sql-ledger \
sql-migrate
apt-get check



}




###   2 
function ba() { 
echo "  "
echo " 2 - Запустить файл sql через isql-fb   "
echo "      Введите название файла     "

#read filename

isql-fb -input 1.sql
#$filename

}

###   3 - 
function ca() { 
echo " 3 - Сохранить вывод Вьюхи в файл  "
echo "      Введите название файла     "

read filename


echo " "

}




### 4 - 
function da() { 
echo " 4 - Запрос к базе данных "

echo "   Введите слово поиска  "

read poisk



echo " "


}

##########################
### - 5  ВЫХОД ИЗ СКРИПТА
function ea() { 
echo " ВЫХОД ИЗ СКРИПТА "
echo " 5 Exit ..."
exit 0;
}
####################################################################
function mainn() {
echo " 1 - Установить firebird и sql в Debian 12 "
echo ""

echo " 2 - Запустить файл sql через isql-fb    "
echo ""

echo " 3 - Сохранить вывод Вьюхи в файл  "
echo ""

echo " 4 - Запрос к базе данных   "
echo ""

echo " 5 - Exit  "
echo ""



echo " Введите значение ... "

main
}
######################################
function main() {

read number

case $number in

1) aa
;;
2) ba
;;
3) ca
;;
4) da
;;
5) ea
;;


*) mainn
;;
esac
}
##########################
#! /bin/bash
### ГЛАВНОЕ МЕНЮ 
echo " "
echo "       **********         "
echo "  Работа с firebird3 sql в Debian 12  "
mainn
