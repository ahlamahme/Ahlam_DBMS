#!/bin/bash
#------------------------Delete all data------
function DelAllData (){
DLTfileData=$(whiptail --inputbox "please enter name of table you want to delete its data" 10 30 3>&1 1>&2 2>&3)
if [[ -f $DLTfileData ]]
then 
#----------------------emsa7 data w seeb el file------------
             sed -i d  $DLTfileData 
             
                     
             whiptail --title "M" --msgbox  "all data deleted successfully !" 8 45
             ./conectmenu.sh
                           
else 
   whiptail --title "Error" --msgbox  "file does not exist !" 8 45
fi
}
DelAllData
