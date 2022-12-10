#!/bin/bash

#---------------------------DropTable-------------------

function DropTable (){
# anafeen

Tname=$(whiptail --inputbox "please enter database name you want to remove" 10 30 3>&1 1>&2 2>&3)
if [[ -f "$Tname"  ]]
then 
       rm  $Tname
       whiptail  --msgbox  "your table removed succssfully" 8 45      
            
else
       whiptail --msgbox  "Table does not exist" 8 45      
fi
}
DropTable

