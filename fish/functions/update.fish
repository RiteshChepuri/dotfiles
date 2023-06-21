function update
  sudo apt update && sudo apt upgrade -y && sudo snap refresh && echo "*********************************************************done updating snap packages********************************************" && brew update && echo "******************************************* done updating brew *************************************************" && brew upgrade && echo "***************************************** done upgrading brew ************************************************"
end
