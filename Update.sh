#!/bin/bash
#-------------------------update lesa-----------------------

function Update(){
Tnameforupdate=$(whiptail --inputbox "please enter table name" 10 30 3>&1 1>&2 2>&3)
attributeTochange=$(whiptail --inputbox "please enter attribut you want " 10 30 3>&1 1>&2 2>&3)
newattr=$(whiptail --inputbox "please enter attribut you want " 10 30 3>&1 1>&2 2>&3)

if [[ -f $Tnameforupdate ]]

then    


 #----------------------badely eladem bel gded------------
sed -i "/$attributeTochange/ s/$attributeTochange/$newattr/" $Tnameforupdate
#----------------------------------------------
else 
   whiptail --title "Error" --msgbox  "No such file !" 8 45
fi
}
Update
