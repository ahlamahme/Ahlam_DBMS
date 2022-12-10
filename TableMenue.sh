#!/bin/bash
function table_menu (){

newmenue=$(whiptail --title "Table Menu" --fb --menu "Table created successfylly chose one opttion or exit" 17 60 7 \
         "1" "Insert into Table"\
         "2" "Select From Table"\
         "3" "Delete From Table"\
         "4" "Update Table" 3>&1 1>&2 2>&3  )
      case $newmenue in 
      1) 
         ./Insert.sh
      ;;
      2) 
         ./Select.sh
      ;;
      3) 
         ./delete.sh
    
      ;;
      4) 
         ./Update.sh
    
      ;;
       esac       

}
table_menu

