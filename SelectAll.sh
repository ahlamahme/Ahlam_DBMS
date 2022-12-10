#!/bin/bash
#---------------------seelct_all----------------------
function SelectAll (){
NameTableToSelect=$(whiptail --inputbox "please enter name of table you want to sea its data" 10 30 3>&1 1>&2 2>&3)
if [[ -f $NameTableToSelect ]]
then 
    cat $NameTableToSelect >selectallfile
    whiptail --textbox selectallfile 12 80
    ./conectmenu.sh
    
else 
   whiptail --title "Error" --msgbox  "file does not exist !" 8 45
fi
}
SelectAll
