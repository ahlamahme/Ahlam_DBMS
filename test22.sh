#!/bin/bash
#------------------------------------------------------------------------------
#------------------Create database---------------------------------------------
function CreateDatabse (){
# anafeen
 path= pwd
echo "please enter database name"
DBname=$(whiptail --inputbox "please enter database name" 10 30 3>&1 1>&2 2>&3)
if [[ -d "$DBname"  ]]
then 
       echo "Database Already Exists!" 
       mainmenu    
else
       #cd $path           #ro7y lelmakan
       mkdir $DBname
       whiptail --title "Creat Databse" --msgbox  "your databse created succssfully" 8 45      
       mainmenu
fi
}
#----------------------------------------------------------------------------
#------------------List database---------------------------------------------
function ListDatabase (){
path = pwd  

ls -F $path | grep "/"> test_textbox
#                  filename height width
whiptail --textbox test_textbox 12 80
mainmenu
}
#-----------------------------------------------------------------------------
#-------------------------------------Remove database-------------------------
function RemoveDatabse (){
# anafeen

DBname=$(whiptail --inputbox "please enter database name you want to remove" 10 30 3>&1 1>&2 2>&3)
if [[ -d "$DBname"  ]]
then 
       rm -r $DBname
       whiptail --title "Creat Databse" --msgbox  "your databse removed succssfully" 8 45    
       mainmenu  
            
else
       whiptail --title "Creat Databse" --msgbox  "Databas does not exist" 8 45  
       mainmenu    
fi
}
#--------------------------------------------------------------------
#--------------------------------#connect to databse-----------------
function connectToDatabas (){
# anafeen
path = pwd  
#echo "please enter database name"
DBname=$(whiptail --inputbox "please enter database name" 10 30 3>&1 1>&2 2>&3)
if [[ -d "$DBname"  ]]
then 
       cd   $DBname
       . conectmenu.sh
         
else
       whiptail --title "Creat Databse" --msgbox  "No such databse to connect" 8 45
        
       mainmenu
              
fi

}

#--------------------------------------------------------------------
#--------------------------------#main_menu--------------------------

function mainmenu()
{
 ADVSEL=$(whiptail --title "Menu" --fb --menu "select options" 15 60 4 \
 "1" "Creat Databse"\
 "2" "List Database"\
 "3" "Connect To Database"\
 "4" "Drob databse" 3>&1 1>&2 2>&3  )
 case $ADVSEL in 
 1) 
    CreateDatabse
 ;;
 2) 
    ListDatabase
 ;;
 3) 
  connectToDatabas
    
 ;;
 4)
   RemoveDatabse
 ;;
 esac  
}
hello_world () {
   echo 'hello, world'
}
mainmenu

#------------------------------------------------------------------
#--------------------------------------------------------------------
#step calling all functions
#mainmenu
#CreateDatabse
#hello_world
#--------------------------------------------------------------------
function ckeckchar (){
echo "write your name"
read name
echo  $name | sed -e 's/\(.\)/\1\n/g'


}
#ckeckchar
#-------------------------------------------
