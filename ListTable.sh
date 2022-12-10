#!/bin/bash
#---------------------------List_tables---------------
function ListDatabase (){
path = pwd  
ls -f $path >test_textbox              #kol mara override 3aleha
whiptail --textbox test_textbox 30 80
}
