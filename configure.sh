#!/bin/bash

if ! [ -d $HOME/Scripts];then
  mkdir $HOME/Scripts
fi

PS3="
Where do you want to save your aliases? "

select answer in ".bashrc" ".bash_aliases";do
  echo -e "### kond3 aliases ###" >> $HOME/$answer
  cat alias.txt >> $HOME/$answer
  break
done

if [ $? -eq 0 ];then
  echo -e "\nAliases successfully added!\n"
else
  echo -e "\nAliases successfully added!\n"
fi

exit 0
