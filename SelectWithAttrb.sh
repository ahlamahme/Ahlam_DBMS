#!/bin/bash
#------------------sellect_using_attribut_na2sa-----------------
function SelectWithAtt (){

Selectfile=$(whiptail --inputbox "please enter name of table you want to sea its data" 10 30 3>&1 1>&2 2>&3)
searchatt=$(whiptail --inputbox "please enter attribut you want " 10 30 3>&1 1>&2 2>&3)
if [[ -f $Selectfile ]]
then 
#----------------------hate attribut men file bta3o bta3o------------
temp=$(print | awk -v a=$searchatt -F , '{ if ( $2 == a )
                         {                         
                         print $0 
                         }                           
            }' $Selectfile >rtemp)
                        
#----------------------------------------------
            
            whiptail --textbox rtemp 30 80
            ./conectmenu.sh
#----------------------------------------------    
else 
   whiptail --title "Error" --msgbox  "file does not exist !" 8 45
fi
}
SelectWithAtt
