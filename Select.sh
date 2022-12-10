#!/bin/bash
function Select (){
selectmenu=$(whiptail --title "Table Menu" --fb --menu "Select options" 15 60 3 \
         "1" "Select All"\
         "2" "Select specific attribute"\
         "2" "Select using range" 3>&1 1>&2 2>&3  )
      case $selectmenu in 
      1) 
        ./SelectAll.sh
       ;;
      2)
        ./SelectWithAttrb.sh
      ;;
      3)
        ./SelectRangeLinse.sh
      esac       
}
Select
