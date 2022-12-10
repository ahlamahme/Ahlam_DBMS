#!/bin/bash
#-------------------------Insert-----------------------
function Insert (){
NameTableToInsert=$(whiptail --inputbox "please enter name of table you want to sea its data" 10 30 3>&1 1>&2 2>&3)

if [[ -f $NameTableToInsert ]]
then
#----------------------hate attribut num bta3o------------
 con=$(awk -v a="$NameTableToInsert" -F, '{ if ($2 == "'$NameTableToInsert'" )             
                   {print $1}           
           }' file_name_att_num)
          j=1
         while [ $j -le $con ]
         do 
            meta=$(whiptail --inputbox "attribut of $j "  15 30 3>&1 1>&2 2>&3)
            
            printf "%s,""$meta" >>$NameTableToInsert
            #printf "\n">>$NameTableToInsert
                      (( j++ ))
         done
         printf "\n">>$NameTableToInsert
         whiptail --title "Message" --msgbox  "Data added to your table !" 8 45
         ./conectmenu.sh
         
else 
    whiptail --title "Error" --msgbox  "file does not exist !" 8 45
fi
}
Insert

#awk -F , '{
 #            if ($2 == "ramy")
  #           {
   #               contaier=$1
    #              print $contaier
     #         }
      #                
                             
       #     }' file_name_att_num

           
            
            





