#!/bin/bash
#------------------------Delete By any column name------
function DelBCN (){
DLTfile=$(whiptail --inputbox "please enter name of table you want to delete its data" 10 30 3>&1 1>&2 2>&3)
delcolumchatt=$(whiptail --inputbox "please enter attribut you want  " 10 30 3>&1 1>&2 2>&3)

if [[ -f $DLTfile ]]
then 
#----------------------emsa7 ay data feha elkelma------------
            sed -i "/$delcolumchatt/d" $DLTfile 
             
                     
             whiptail --title "M" --msgbox  "recordse deleted successfully !" 8 45
             ./conectmenu.sh
                           
else 
   whiptail --title "Error" --msgbox  "file does not exist !" 8 45
fi
}
DelBCN
