#!/bin/bash
#-------------------------------------------------------

#-------------------------Creat_table-------------------
function CreatTable ()
{
Tname=$(whiptail --inputbox "please enter table name" 10 30 3>&1 1>&2 2>&3)

if [[ -f $Tname ]]
then 
    whiptail --title "Error" --msgbox  "File aleardy exist !" 8 45
else 
        touch $Tname
        AttNumber=$(whiptail --inputbox "please enter number of attributes" 10 30 3>&1 1>&2 2>&3)
        i=1
      while [ $i -le $AttNumber ]
      do 
            att=$(whiptail --inputbox "attribut of $i "  15 30 3>&1 1>&2 2>&3)
            datatyp=$(whiptail --inputbox "datatype of $i "  15 30 3>&1 1>&2 2>&3) 
               

            printf '%s%s\n'"$att,$datatyp" >>$Tname
            
           (( i++ ))                 
      done
#---------------------------------------restruct file-----------
stru=$(awk -F , '{for (i=1; i<=NF; i++) a[i,NR]=$i
        max=(max<NF?NF:max)}
        END {for (i=1; i<=max; i++)
              {for (j=1; j<=NR; j++) 
                  printf "%s%s", a[i,j],   (j==NR?RS:FS)
              }
        }' $Tname)
        printf "%s""$stru"  >$Tname
#--------------------------------------------------------------
      pkey=$(whiptail --inputbox "primary key "  15 30 3>&1 1>&2 2>&3)
       printf "\n">>$Tname
       
#-----------------------------------------------
  #          printf "$header" "$att" "$datatyp" 
#-----------------------------------------------
       printf '%s%s%s\n'"$AttNumber,$Tname,$pkey" >>file_name_att_num
       
      
           whiptail --title "not error" --msgbox  " file created sussfully" 8 45
fi           
           mainmenu
}
#---------------------------List_tables---------------
function ListDatabase (){
path = pwd  
ls -f $path | grep -v $path test_textbox | grep -v $path  file_name_att_num >test_textbox              #kol mara override 3aleha
whiptail --textbox test_textbox 30 80
}
function mainmenu()
{
 ADVSEL=$(whiptail --title "Menu" --fb --menu "select options" 17 60 7 \
 "1" "Create Table "\
 "2" "List Tables"\
 "3" "Drop Table"\
 "4" "Table Options" 3>&1 1>&2 2>&3  )
 case $ADVSEL in 
 1) 
    CreatTable
 ;;
 2) 
    ListDatabase
 ;;
 3) 
    ./drop.sh
    
 ;;
 4) 
    ./TableMenue.sh
    
 ;;
 esac
 
}
mainmenu
