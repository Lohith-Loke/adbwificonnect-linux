# adding user script 
terminal that uses bash /Zsh  is a shell loades config file .bashrc/.zshrc file 
this file runs every time you open terminal 
using source /path/to/user.sh
you can add any number of scripts but its better to use functions and single script 
since priference is given to functions in user.sh you can over ride functions with this function 
# example 
### rm -rf *
this program will remove all the files in the current folder 
this is pretty bad as it takes no privalage to use it in user home directory 
replace rm with 
function rm(){
 echo "no permission " 
 return 1 
}
this will prevent use of rm for normal user 
if you wish to use rm use it as 
### sudo rm
this is better as atleast it will provide some sence of security 
