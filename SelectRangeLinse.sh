#!/bin/bash
#------------------sellect_using_attribut_na2sa-----------------
function SelectRangeLinse (){

SelectRangefile=$(whiptail --inputbox "please enter name of table you want to sea its data" 10 30 3>&1 1>&2 2>&3)
manyattr=$(whiptail --inputbox "please enter attribut you want " 10 30 3>&1 1>&2 2>&3)
if [[ -f $SelectRangefile ]]
then 
#----------------------hate attribut men file bta3o bta3o------------
temp=$(print | sed -n "manyattr" $SelectRangefile >sedtemp)
                        
#----------------------------------------------
            
            whiptail --textbox sedtemp 30 80
#----------------------------------------------    
else 
   whiptail --title "Error" --msgbox  "file does not exist !" 8 45
fi
}
SelectWithAtt
