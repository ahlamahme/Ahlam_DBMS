#!/bin/bash
#------------------------Delete By Primary Key----------
#function DelBPrimary(){




#}
#-------------------------------------------------------

#-------------------------------------------------------
#------------------------Delete all data----------
#-------------------------------------------------------
function table_menu (){

Deletmenue=$(whiptail --title "Delete Menu" --fb --menu "Which option do you prefere " 17 60 3 \
         "1" "Delete By Primary Key"\
         "2" "Delete By any column name"\
         "3" "Delete all data" 3>&1 1>&2 2>&3  )
      case $Deletmenue in 
      1) 
         whiptail --title "4" --msgbox  "not complete !" 8 45
      ;;
      2) 
         
         ./dc.sh
      ;;
      3) 
         ./DeleteAllData.sh    
      ;;
       esac       

}
table_menu

