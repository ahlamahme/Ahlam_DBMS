#!/bin/bash
#-------------------------projection-----------------------

function projection(){
TnameProj=$(whiptail --inputbox "please enter table name" 10 30 3>&1 1>&2 2>&3)
if [[ -f $TnameProj ]]

then    
#cut -d " " -f 1 state.txt
  whiptail --title "Error" --msgbox  "No such file !" 8 45
else 
   whiptail --title "Error" --msgbox  "No such file !" 8 45
fi
}
projection
